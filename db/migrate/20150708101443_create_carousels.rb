class CreateCarousels < ActiveRecord::Migration
  def change
    create_table :carousels do |t|
      t.text :image
      t.boolean :active

      t.timestamps null: false
    end
  end
end
