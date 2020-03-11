class RemoveRedundantDatesFromBookings < ActiveRecord::Migration[6.0]
  def change

    remove_column :bookings, :owner_date, :boolean

    remove_column :bookings, :player_date, :boolean
  end
end
