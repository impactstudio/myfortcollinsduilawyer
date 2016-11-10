class CreateCriminalDefenses < ActiveRecord::Migration
  def change
    create_table :criminal_defenses do |t|
      t.string :title
      t.text :content
      t.string :slug

      t.timestamps null: false
    end
    add_index :criminal_defenses, :slug, unique: true
  end
end
