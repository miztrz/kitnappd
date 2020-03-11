class Booking < ApplicationRecord
  belongs_to :kitten
  belongs_to :user
  validates :start_time, :end_time, presence: true
  validate :end_time_after_start_time

  private

  def end_time_after_start_time
    return if end_time.blank? || start_time.blank?

    if end_time < start_time
      errors.add(:end_date, "must be after the start date")
    end
  end


end
