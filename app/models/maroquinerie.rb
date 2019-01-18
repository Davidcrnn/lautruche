class Maroquinerie < ApplicationRecord
  validates :titre, presence: true
  validates :description, presence: true
  validates :prix, presence: true
  validates :visible, inclusion: {in: [true, false]}
  validates :categorie, inclusion: {in: ["Sac", "Porte-monnaie", "Pochette"]}, presence: true
  has_many :mapictures, :dependent => :destroy
  validates :maphoto, presence: true
  accepts_nested_attributes_for :mapictures, allow_destroy: true
  mount_uploader :maphoto, MaphotoUploader
end
