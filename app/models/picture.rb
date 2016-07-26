class Picture < ApplicationRecord
  belongs_to :product
  mount_uploader :image, ProductPictureUploader
  validates :image, presence: true
end
