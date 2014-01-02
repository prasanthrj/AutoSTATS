class CreateTestartifacts < ActiveRecord::Migration
  def change
    create_table :testartifacts do |t|
      t.string :name
      t.string :module
      t.integer :application_ID
      t.string :testcase_ID
      t.string :automation_ID

      t.timestamps
    end
  end
end
