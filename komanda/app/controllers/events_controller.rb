class EventsController < ApplicationController
  before_filter :admin_user, only: [:new, :create, :edit, :update, :destroy]
  before_filter :logged_in, only: :join
  
  def index
    @upcoming = Event.upcoming
    @past     = Event.past
  end
  
  def show
    @event  = Event.find(params[:id])
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(params[:event])
    if @event.save
      render @event
    else
      render "new"
    end
  end
  
  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.update_attributes(params[:event])
    # @event.assign_attributes(params[:party])
    # @party.pics = (params[:party][:pics]).split
    redirect_to @event, notice: "Event updated!"
  end

  def destroy
    @event = Event.find(params[:id]).destroy
    redirect_to root_path
  end
  
  def join
    event = Event.find(params[:id])
    event.join(current_user)

    render json: { count:       event.users.count, 
                   image_url:   current_user.image_url,
                   profile_url: current_user.profile_url }
  end
end
