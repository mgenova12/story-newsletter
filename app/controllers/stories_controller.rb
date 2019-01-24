class StoriesController < ApplicationController
  include StoriesHelper
  
  def index
    @stories = Story.all.reverse
  end

  def new
    get_newsletter_id
    @story = Story.new
  end

  def create
    @story = Story.new(story_params)

    if @story.save
      flash[:success] = "Story Succesfully Created!"
      redirect_to "/stories"
    else 
      flash[:danger] = @story.errors.full_messages
      render 'new'
    end
  end

  def show 
    @story = Story.find(params[:id])
  end

  def edit 
    @story = Story.find(params[:id])
  end

  def update
    @story = Story.find(params[:id])

    if @story.update(story_params)
      flash[:success] = "Story Succesfully Updated!"
      redirect_to "/stories/#{@story.id}"
    else
      flash[:danger] = @story.errors.full_messages
      render 'edit'
    end
  end

  def destroy
    story = Story.find(params[:id])
    story.destroy

    redirect_to "/stories"

  end


  private 

  def story_params
    params.require(:story).permit(:title, :tag, :content, :newsletter_id)
  end

end
