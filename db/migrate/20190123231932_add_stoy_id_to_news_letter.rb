class AddStoyIdToNewsLetter < ActiveRecord::Migration[5.0]
  def change
    add_column :newsletters, :story_id, :integer
    remove_column :stories, :newsletter_id, :integer
  end
end
