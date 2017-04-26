class Photo < ApplicationRecord
  belongs_to :album
  mount_uploader :image, PhotoUploader
  # has_attached_file :avatar
end
