class EventsController < ApplicationController
  before_filter :admin_user, only: [:new, :create, :edit, :update, :destroy]
  before_filter :logged_in, only: :join
  before_filter :find_event, only: [:show, :edit, :update, :destroy, :pictures]
  
  def find_event
    @event = Event.find(params[:id])
  end
  
  def index
    @upcoming = Event.upcoming
    @past     = Event.past
  end
  
  def show
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(params[:event])
    @event.pictures = (params[:event][:pictures]).split
    
    if @event.save
      render @event
    else
      render "new"
    end
  end
  
  def edit
  end

  def update
    @event.update_attributes(params[:event])
    @event.update_attribute(:pictures, (params[:event][:pictures]).split)
    redirect_to @event, notice: "Event updated!"
  end

  def destroy
    @event.destroy
    redirect_to root_path
  end
  
  def join
    @event = Event.find(params[:id])
    @event.join(current_user)

    render json: { count:       @event.users.count, 
                   image_url:   current_user.image_url,
                   profile_url: current_user.profile_url }
  end
  
  def pictures
  end
end
