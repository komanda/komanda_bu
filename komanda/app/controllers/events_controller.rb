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
    event = Event.find(params[:id])
    event.join(current_user)

    render json: { count:       event.users.count, 
                   image_url:   current_user.image_url,
                   profile_url: current_user.profile_url }
  end
end
