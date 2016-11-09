class CreateDuis < ActiveRecord::Migration
  def change
    create_table :duis do |t|
      t.string :title
      t.text :content
      t.string :slug

      t.timestamps null: false
    end
    add_index :duis, :slug, unique: true
  end
end
