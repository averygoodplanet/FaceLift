class Website < ActiveRecord::Base
  attr_accessible :title, :description, :before_image, :after_image, :image_cache, :url
  mount_uploader :before_image, ImageUploader
  mount_uploader :after_image, ImageUploader

  validates_presence_of :title
end
