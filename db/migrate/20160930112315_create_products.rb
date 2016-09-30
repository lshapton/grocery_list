class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.integer :external_id
      t.string :title
      t.string :image

      t.timestamps
    end
  end
end
