class EventsController < ApplicationController
  before_filter :admin_user, only: [:new, :reate, :update, :destroy]
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
  end

  def create
  end

  def update
  end

  def destroy
  end
  
  def join
    @event = Event.find(params[:id])
    @event.users << current_user unless @event.users.include?(current_user)
    @event.save

    render json: { count:       @event.users.count, 
                   image_url:   @event.users.last.image_url,
                   profile_url: @event.users.last.profile_url }
  end
end
