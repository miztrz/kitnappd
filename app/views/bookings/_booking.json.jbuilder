json.extract! booking, :id, :kitten_id, :length_human, :start_time, :end_time, :accepted, :total, :created_at, :updated_at
json.url booking_url(booking, format: :json)
