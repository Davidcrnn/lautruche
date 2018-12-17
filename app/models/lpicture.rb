class Lpicture < ApplicationRecord
belongs_to :lyfestyle
  mount_uploader :lpicture, LpictureUploader
end
