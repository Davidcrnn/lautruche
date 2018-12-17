class Mpicture < ApplicationRecord
  belongs_to :mobilier
  mount_uploader :mpicture, MpictureUploader
end
