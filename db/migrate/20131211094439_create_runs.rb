class CreateRuns < ActiveRecord::Migration
  def change
    create_table :runs do |t|
      t.integer :release_ID
      t.integer :project_ID
      t.string :module_name
      t.string :test_case_name
      t.string :test_case_ID
      t.string :test_result
      t.string :browser

      t.timestamps
    end
  end
end
