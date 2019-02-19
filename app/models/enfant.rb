class Enfant < ApplicationRecord
  validates :titre, presence: true
  validates :description, presence: true
  validates :prix, presence: true
  validates :visible, inclusion: {in: [true, false]}
  validates :categorie, inclusion: {in: ["Doudou", "Textile", "Deguisement"]}, presence: true
  has_many :epictures, :dependent => :destroy

  accepts_nested_attributes_for :epictures, allow_destroy: true
  mount_uploader :ephoto, EphotoUploader
end
