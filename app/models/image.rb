class Image < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :name
  belongs_to :imageable, polymorphic: true
  mount_uploader :name, ImageUploader

end
