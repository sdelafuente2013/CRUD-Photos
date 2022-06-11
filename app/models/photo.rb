class Photo < ApplicationRecord
  mount_uploader :picture, PictureUploader

  validates :title,
            presence: true,
            uniqueness: true
end
