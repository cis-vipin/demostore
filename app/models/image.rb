class Image < ActiveRecord::Base
  # attr_accessible :title, :body

<<<<<<< Updated upstream

=======
>>>>>>> Stashed changes
  attr_accessible :image
  belongs_to :imageable, polymorphic: true

  mount_uploader :image , ImageUploader

<<<<<<< Updated upstream

=======
>>>>>>> Stashed changes
end
