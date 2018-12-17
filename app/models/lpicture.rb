class Lpicture < ApplicationRecord
belongs_to :lifestyle
  mount_uploader :lpicture, LpictureUploader
end
