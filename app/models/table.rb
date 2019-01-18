class Table < ApplicationRecord
validates :titre, presence: true
  validates :description, presence: true
  validates :prix, presence: true
  validates :visible, inclusion: {in: [true, false]}
  validates :categorie, inclusion: {in: ["Assiette", "Couvert", "Tasse", "Plat"]}, presence: true
  has_many :tpictures, :dependent => :destroy
  validates :tphoto, presence: true
  accepts_nested_attributes_for :tpictures, allow_destroy: true
  mount_uploader :tphoto, TphotoUploader
end
