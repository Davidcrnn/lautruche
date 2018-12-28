class Rpicture < ApplicationRecord
  belongs_to :realisation
  mount_uploader :rpicture, RpictureUploader
end
