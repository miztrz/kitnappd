class Booking < ApplicationRecord
  belongs_to :kitten
  belongs_to :user
end
