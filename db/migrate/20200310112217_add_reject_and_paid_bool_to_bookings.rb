class AddRejectAndPaidBoolToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :rejected, :boolean, default: false
    add_column :bookings, :paid, :boolean, default: false
  end
end
