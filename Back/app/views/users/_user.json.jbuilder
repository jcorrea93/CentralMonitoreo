json.extract! user, :id, :name, :last_name, :address, :active, :email, :bio, :birth_date, :estrato, :created_at, :updated_at
json.url user_url(user, format: :json)