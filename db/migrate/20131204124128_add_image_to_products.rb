class AddImageToProducts < ActiveRecord::Migration
  def change
  	add_column :image ,:string
  end
end
