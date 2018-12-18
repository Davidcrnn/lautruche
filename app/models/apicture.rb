class Apicture < ApplicationRecord
  belongs_to :accessoire
  mount_uploader :apicture, ApictureUploader
end
