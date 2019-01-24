class AddStoryIdToNewsLetter < ActiveRecord::Migration[5.0]
  def change
    add_column :newsletters, :name, :string
  end
end
