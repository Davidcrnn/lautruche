class Lifestyle < ApplicationRecord
  validates :titre, presence: true
  validates :description, presence: true
  validates :prix, presence: true
  validates :visible, inclusion: {in: [true, false]}
  validates :categorie, inclusion: {in: ["Miroir", "Bougie", "Bougeoire", "Cadre"]}, presence: true
  has_many :lpictures, :dependent => :destroy
  accepts_nested_attributes_for :lpictures, allow_destroy: true
  mount_uploader :lphoto, LphotoUploader
end
