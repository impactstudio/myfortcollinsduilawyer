class CreateCaseResults < ActiveRecord::Migration
  def change
    create_table :case_results do |t|
      t.text :result

      t.timestamps null: false
    end
  end
end
