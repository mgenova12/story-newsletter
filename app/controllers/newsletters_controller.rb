class NewslettersController < ApplicationController
  def index
    @newsletters = Newsletter.order(:created_at).reverse
  end

  def show 
    @newsletter = Story.where(newsletter_id: params[:id])
    @newsletter_date = Newsletter.find(params[:id]).created_at
  end

end
