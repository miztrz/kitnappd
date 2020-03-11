class AddChecksToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :owner, :boolean
    add_column :bookings, :owner_date, :datetime
    add_column :bookings, :player, :boolean
    add_column :bookings, :player_date, :datetime
    add_column :bookings, :fundsreleased, :boolean
  end
end
