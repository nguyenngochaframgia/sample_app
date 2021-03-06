class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.text :content
      t.string :title
      t.string :picture
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
