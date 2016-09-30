class CreateProductVariants < ActiveRecord::Migration[5.0]
  def change
    create_table :product_variants do |t|
      t.integer :external_id
      t.integer :product_external_id
      t.string :title
      t.decimal :price
      t.string :sku
      t.integer :position
      t.string :inventory_policy
      t.string :fulfillment_service
      t.string :inventory_management
      t.string :barcode
      t.integer :image_id
      t.integer :inventory_quantity
      t.integer :weight
      t.string :weight_unit
      t.integer :old_inventory_quantity
      t.boolean :requires_shipping

      t.timestamps
    end
  end
end
