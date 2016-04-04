class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.text :content
      t.integer :user_id
      t.string :title
      t.string :picture

      t.timestamps null: false
    end
  end
end
