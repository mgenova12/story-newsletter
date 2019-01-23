class StoriesController < ApplicationController
  
  def index
    @stories = Story.all
  end

  def new
    @story = Story.new
  end

  def create
    employee = Story.new(story_params)

    if employee.save
      redirect_to "/stories"
    end
  end

  def show 
    @story = Story.find(params[:id])
  end

  def edit 
    @story = Story.find(params[:id])
  end

  def update
    story = Story.find(params[:id])

    story.update(story_params)

    redirect_to "/stories/#{story.id}"
  end

  def destroy
    story = Story.find(params[:id])
    story.destroy

    redirect_to "/stories"

  end


  private 

  def story_params
    params.require(:story).permit(:title, :tag, :content)
  end

end
