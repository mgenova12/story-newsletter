class CreateStories < ActiveRecord::Migration[5.0]
  def change
    create_table :stories do |t|
      t.string :tag
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
