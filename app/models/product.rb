class Product < ActiveRecord::Base
  attr_accessible :name, :price, :image
  mount_uploader :image, ImageUploader

  # set image path
  
end
