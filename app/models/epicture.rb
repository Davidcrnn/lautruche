class Epicture < ApplicationRecord
  belongs_to :enfant
  mount_uploader :epicture, EpictureUploader
end
