ShopifyApp.configure do |config|
  config.application_name = 'Grocery List' # Optional
  config.api_key = ENV['api_key']
  config.secret = ENV['secret']
  config.scope = 'read_customers, read_orders, write_products'
  config.embedded_app = true
end
