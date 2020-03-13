class Kitten < ApplicationRecord
	belongs_to :user
	has_many_attached :images, dependent: :destroy
	has_many :bookings, dependent: :destroy
	validates :name, :breed, :daily_rate, presence: true
	validates :daily_rate, numericality: { greater_than: 0 }

	def self.active?
		self.active
	end

end
