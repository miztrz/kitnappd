class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :kitten, null: false, foreign_key: true
      t.string :title
      t.datetime :start_time
      t.datetime :end_time
      t.boolean :accepted, default: false
      t.money :total

      t.timestamps
    end
  end
end
