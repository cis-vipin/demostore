class Store < ActiveRecord::Base
  attr_accessible :name
  has_and_belongs_to_many :products
end
