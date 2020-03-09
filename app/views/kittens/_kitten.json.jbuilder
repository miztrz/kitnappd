json.extract! kitten, :id, :name, :breed, :description, :daily_rate, :active, :created_at, :updated_at, images: []
json.url kitten_url(kitten, format: :json)
