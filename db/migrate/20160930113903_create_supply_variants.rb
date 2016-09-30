class CreateSupplyVariants < ActiveRecord::Migration[5.0]
  def change
    create_table :supply_variants do |t|
      t.string :title
      t.integer :weight
      t.string :weight_unit

      t.timestamps
    end
  end
end
