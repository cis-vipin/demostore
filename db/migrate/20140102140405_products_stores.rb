class ProductsStores < ActiveRecord::Migration
  def up

    create_table :products_stores,:id => false do |t|
      t.integer :product_id
      t.integer :store_id
      t.timestamps
  end

  end

  def down
  end
end
