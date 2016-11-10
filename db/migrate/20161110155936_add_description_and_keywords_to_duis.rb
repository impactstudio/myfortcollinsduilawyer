class AddDescriptionAndKeywordsToDuis < ActiveRecord::Migration
  def change
    add_column :duis, :description, :string
    add_column :duis, :keywords, :string
  end
end
