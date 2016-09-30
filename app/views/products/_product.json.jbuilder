json.extract! product, :id, :external_id, :title, :image, :created_at, :updated_at
json.url product_url(product, format: :json)