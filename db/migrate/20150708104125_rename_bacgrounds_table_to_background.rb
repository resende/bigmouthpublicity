class RenameBacgroundsTableToBackground < ActiveRecord::Migration
  def change
    rename_table :bacgrounds, :backgrounds
  end
end
