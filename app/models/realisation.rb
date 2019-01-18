class Realisation < ApplicationRecord
  validates :titre, presence: true
  validates :description, presence: true
  validates :adresse, presence: true
  has_many :rpictures, :dependent => :destroy
  validates :rphoto, presence: true
  accepts_nested_attributes_for :rpictures, allow_destroy: true
  mount_uploader :rphoto, RphotoUploader
end
