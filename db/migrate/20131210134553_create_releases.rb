class CreateReleases < ActiveRecord::Migration
  def change
    create_table :releases do |t|
      t.integer :release_ID
      t.integer :project_ID
      t.date :release_start_date
      t.date :release_end_date
      t.string :release_status

      t.timestamps
    end
  end
end
