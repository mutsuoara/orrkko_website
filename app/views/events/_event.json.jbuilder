json.extract! event, :id, :title, :date, :location, :phone_number, :email, :website, :created_at, :updated_at
json.url event_url(event, format: :json)
