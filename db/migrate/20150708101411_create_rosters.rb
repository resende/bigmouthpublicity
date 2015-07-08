class CreateRosters < ActiveRecord::Migration
  def change
    create_table :rosters do |t|
      t.string :name
      t.string :url

      t.timestamps null: false
    end
  end
end
