class AddDescriptionAndKeywordsToCriminalDefenses < ActiveRecord::Migration
  def change
    add_column :criminal_defenses, :description, :string
    add_column :criminal_defenses, :keywords, :string
  end
end
