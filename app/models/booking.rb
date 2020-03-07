class Booking < ApplicationRecord
  belongs_to :kitten
  belongs_to :user

  def accepted?
    self.accepted
  end
end
