class Tepicture < ApplicationRecord
belongs_to :textile
  mount_uploader :tepicture, TepictureUploader
end
