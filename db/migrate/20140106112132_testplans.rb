class Testplans < ActiveRecord::Migration
  def up
    add_column :pid, :string 
  end
end
