class Bpicture < ApplicationRecord
  belongs_to :bijou
  mount_uploader :bpicture, BpictureUploader
end
