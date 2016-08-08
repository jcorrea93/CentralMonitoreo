json.extract! product, :id, :nombre, :description, :price, :cant, :activo, :make_id, :created_at, :updated_at
json.url product_url(product, format: :json)