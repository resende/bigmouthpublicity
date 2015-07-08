class DropBacground < ActiveRecord::Migration
  def change
    drop_table :bacgrounds
  end
end
