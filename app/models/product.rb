class Product < ActiveRecord::Base
  attr_accessible :name, :price, :stock, :description,:category_id,:store_ids ,:images_attributes
  validates :name, presence: true
  validates :price, :numericality => { :greater_than_or_equal_to => 0 ,:message=> "Invalid price"}
  has_many :images , :as=>:imageable
  validates :stock, presence: true
  validates :description, presence: true

  accepts_nested_attributes_for :images
  # set image path

  belongs_to :category

  has_and_belongs_to_many :stores
  
end
