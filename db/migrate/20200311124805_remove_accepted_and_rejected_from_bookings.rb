class RemoveAcceptedAndRejectedFromBookings < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :accepted, :boolean
    remove_column :bookings, :rejected, :boolean
  end
end
