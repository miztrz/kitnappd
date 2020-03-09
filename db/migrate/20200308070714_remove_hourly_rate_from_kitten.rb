class RemoveHourlyRateFromKitten < ActiveRecord::Migration[6.0]
  def change

    remove_column :kittens, :hourly_rate, :money
  end
end
