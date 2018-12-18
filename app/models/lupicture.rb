class Lupicture < ApplicationRecord
  belongs_to :luminaire
  mount_uploader :lupicture, LupictureUploader
end
