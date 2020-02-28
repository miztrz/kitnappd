class ChangeActiveFlagOnKittenModelToTrue < ActiveRecord::Migration[6.0]
  def change
    change_column_default :kittens, :active, default: true
  end
end
