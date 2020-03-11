class ChangeBooleanDefaultsInBookings < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings,:title,:string
    add_column :bookings, :length_human, :string
    change_column_default :bookings, :confirmed, false
    change_column_default :bookings, :owner, false
    change_column_default :bookings, :player, false
    change_column_default :bookings, :fundsreleased, false
  end
end
