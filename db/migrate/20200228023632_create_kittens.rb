class CreateKittens < ActiveRecord::Migration[6.0]
  def change
    create_table :kittens do |t|
      t.string :name
      t.string :breed
      t.text :description
      t.money :hourly_rate
      t.money :daily_rate
      t.boolean :active

      t.timestamps
    end
  end
end
