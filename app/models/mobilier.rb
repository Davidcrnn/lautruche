class Mobilier < ApplicationRecord
  validates :titre, presence: true
  validates :description, presence: true
  validates :prix, presence: true
  validates :visible, inclusion: {in: [true, false]}
  validates :categorie, inclusion: {in: ["Canapé", "Fauteuil", "Chaise", "Table basse", "Banc"]}, presence: true
  has_many :mpictures, :dependent => :destroy
  accepts_nested_attributes_for :mpictures, allow_destroy: true
  mount_uploader :mphoto, MphotoUploader
end
