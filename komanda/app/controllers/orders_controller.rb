class OrdersController < ApplicationController
  before_filter :logged_in, only: [:new, :create]
  before_filter :admin_user, only: :index
  
  def index
    if params[:event_id]
      @users = []
      Event.find(params[:event_id]).tickets.each_key do |key|
        @users << User.find(key)
      end
    end
  end

  def new
    if params[:event_id]
      event = Event.find(params[:event_id])
      if event.upcoming?
        session[:event_id] = params[:event_id]
        session[:price] = event.price
        @order = Order.new()
      else
        redirect_to root_path 
      end
    else
      redirect_to root_path
    end
  end

  def create
    @order = current_user.orders.new(params[:order])
    @order.type = session[:event_id]
    @order.price = session[:price]
    @order.ip_address = request.remote_ip
                                             
    if @order.save && @order.purchase
      event = Event.find(session[:event_id])
      if event.tickets.has_key?("#{current_user.id}")
        event.tickets["#{current_user.id}"] += @order.quantity
      else
        event.tickets["#{current_user.id}"] = @order.quantity
      end
      event.save
      event.join(current_user)
      current_user.update_email(@order.email)
      render 'success'
    else
      render 'new'
    end
  end
end
