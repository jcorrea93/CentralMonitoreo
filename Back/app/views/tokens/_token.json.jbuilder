json.extract! token, :id, :token, :number_requests, :name, :created_at, :updated_at
json.url token_url(token, format: :json)