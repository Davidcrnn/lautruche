class Mapicture < ApplicationRecord
  belongs_to :maroquinerie
  mount_uploader :mapicture, MapictureUploader
end
