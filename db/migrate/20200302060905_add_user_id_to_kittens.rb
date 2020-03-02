class AddUserIdToKittens < ActiveRecord::Migration[6.0]
  def change
    add_reference :kittens, :user, foreign_key: true
  end
end