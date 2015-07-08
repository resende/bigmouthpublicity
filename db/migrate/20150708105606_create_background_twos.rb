class CreateBackgroundTwos < ActiveRecord::Migration
  def change
    create_table :background_twos do |t|
      t.text :image
      t.boolean :active

      t.timestamps null: false
    end
  end
end
