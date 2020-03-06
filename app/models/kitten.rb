class Kitten < ApplicationRecord
	belongs_to :user
	has_many_attached :images, dependent: :destroy
	has_many :bookings, dependent: :destroy
	validates :name, :breed, :hourly_rate, :daily_rate, presence: true
	# TODO Before launch update validates to include "Images".
	validates :hourly_rate, :daily_rate, numericality: { greater_than: 0 }
end
