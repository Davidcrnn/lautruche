class Picture < ApplicationRecord
  belongs_to :verrerie
  mount_uploader :picture, PictureUploader
end
