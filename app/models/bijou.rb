class Bijou < ApplicationRecord
  validates :titre, presence: true
  validates :description, presence: true
  validates :prix, presence: true
  validates :visible, inclusion: {in: [true, false]}
  validates :categorie, inclusion: {in: ["Bague", "Colier", "Boucle d'oreille", "Bracelet"]}, presence: true
  has_many :bpictures, :dependent => :destroy
  accepts_nested_attributes_for :bpictures, allow_destroy: true
  mount_uploader :bphoto, PhotoUploader
end
