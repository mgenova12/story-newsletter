class NewslettersController < ApplicationController
  def index
    @newsletters = Newsletter.all
  end

  def show 
    @newsletter = Story.where(newsletter_id: params[:id])
  end

end
