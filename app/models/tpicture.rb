class Tpicture < ApplicationRecord
belongs_to :table
  mount_uploader :tpicture, TpictureUploader
end
