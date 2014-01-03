class Category < ActiveRecord::Base
  attr_accessible :name, :image_attributes
  has_many :products , dependent: :destroy
  has_one :image , :as=>:imageable
  accepts_nested_attributes_for :image
end
