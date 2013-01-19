class CommentsController < ApplicationController
  before_filter :logged_in
  before_filter :get_commentable
  
  def get_commentable
    if params[:event_id]
      @commentable = Event.find(params[:event_id])
    end
  end
  
  def create
    unless spam?
      @comment          = @commentable.comments.new(content: params[:content])
      @comment.user_id  = current_user.id
      @comment.save
      
      render json: { dom_id:      "comment_#{@comment.id}",
                     no_content:  @comment.content.blank?,
                     count:       @commentable.comments.count,
                     content:     @comment.content,
                     name:        current_user.name,
                     image_url:   current_user.image_url,
                     profile_url: current_user.profile_url }
    end
  end
  
  def destroy
    @comment = @commentable.comments.find(params[:id])
    if authenticated_user?(@comment)
      @comment.destroy
      @count = @commentable.comments.count
      respond_to do |format| 
        format.js
      end
    end
  end
  
  private
    def spam?
      if current_user.comments.count > 0
        return (Time.now - current_user.comments.last.created_at) <= 1 ? true : false
      else
        return false
      end
    end
end
