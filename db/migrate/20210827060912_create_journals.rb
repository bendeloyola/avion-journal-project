class CreateJournals < ActiveRecord::Migration[6.1]
  def change
    create_table :journals do |t|
      t.string :title
      t.text :content
      t.integer :category_id
      t.timestamps
    end
  end
end
