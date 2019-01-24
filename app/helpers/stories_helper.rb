module StoriesHelper

  def get_newsletter_id
    if Newsletter.last.created_at.strftime('%A, %d %b %Y') != Date.today.strftime('%A, %d %b %Y')
      @newsletter_id = Newsletter.last.id
    else
      Newsletter.create
      @newsletter_id = Newsletter.last.id
    end 
  end

end
