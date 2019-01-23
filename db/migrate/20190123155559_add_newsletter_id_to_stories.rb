class AddNewsletterIdToStories < ActiveRecord::Migration[5.0]
  def change
    add_column :stories, :newsletter_id, :integer
    remove_column :newsletters, :story_id, :integer
  end
end
