class Product < ActiveRecord::Base
  attr_accessible :name, :price, :stock, :description ,:images_attributes
  
  has_many :images , :as=>:imageable
  #mount_uploader :image, ImageUploader
  accepts_nested_attributes_for :images
  # set image path
  
end
