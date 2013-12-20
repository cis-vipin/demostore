class Product < ActiveRecord::Base
  attr_accessible :name, :price, :stock, :description ,:images_attributes
  
  has_many :images , :as=>:imageable
<<<<<<< Updated upstream
  #mount_uploader :image, ImageUploader


=======
>>>>>>> Stashed changes

  accepts_nested_attributes_for :images
  # set image path
  
end
