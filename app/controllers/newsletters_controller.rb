class NewslettersController < ApplicationController
  def create
    @story = Newsletter.new(story_params)

    if @story.save
      flash[:success] = "Story Succesfully Created!"
      redirect_to "/stories"
    else 
      flash[:danger] = @story.errors.full_messages
      render 'new'
    end

  private 

  def story_params
    params.require(:story).permit(:id, story: [:title, :tag, :content])
  end    

  end
end
