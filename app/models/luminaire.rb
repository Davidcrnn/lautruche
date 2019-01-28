class Luminaire < ApplicationRecord
  validates :titre, presence: true
  validates :description, presence: true
  validates :prix, presence: true
  validates :visible, inclusion: {in: [true, false]}
  validates :categorie, inclusion: {in: ["Suspension", "Applique", "Lampe à poser", "Baladeuse"]}, presence: true
  has_many :lupictures, :dependent => :destroy

  accepts_nested_attributes_for :lupictures, allow_destroy: true
  mount_uploader :luphoto, LuphotoUploader
end
