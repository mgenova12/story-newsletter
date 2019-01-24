class AddIdToNewsLetter < ActiveRecord::Migration[5.0]
  def change
    remove_column :newsletters, :story_id, :integer
    remove_column :newsletters, :name, :string
    add_column :stories, :newsletter_id, :integer    
  end
end
