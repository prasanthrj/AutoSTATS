class CreateTestplans < ActiveRecord::Migration
  def change
    create_table :testplans do |t|
      t.string :application_id
      t.string :testplan_name
      t.string :pid

      t.timestamps
    end
  end
end
