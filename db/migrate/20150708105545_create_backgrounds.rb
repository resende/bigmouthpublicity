class CreateBackgrounds < ActiveRecord::Migration
  def change
    create_table :backgrounds do |t|
      t.text :image
      t.boolean :active

      t.timestamps null: false
    end
  end
end
