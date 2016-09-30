json.extract! product_variant, :id, :external_id, :product_external_id, :title, :price, :sku, :position, :inventory_policy, :fulfillment_service, :inventory_management, :barcode, :image_id, :inventory_quantity, :weight, :weight_unit, :old_inventory_quantity, :requires_shipping, :created_at, :updated_at
json.url product_variant_url(product_variant, format: :json)