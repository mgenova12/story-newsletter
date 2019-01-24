module StoriesHelper

  def get_newsletter_id
    if (!Newsletter.last.nil?) && (Newsletter.last.created_at.beginning_of_day == Date.today.beginning_of_day)
      @newsletter_id = Newsletter.last.id
    else
      Newsletter.create
      @newsletter_id = Newsletter.last.id
    end 
  end

end
