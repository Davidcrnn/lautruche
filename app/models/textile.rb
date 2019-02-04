class Textile < ApplicationRecord
validates :titre, presence: true
  validates :description, presence: true
  validates :prix, presence: true
  validates :visible, inclusion: {in: [true, false]}
  validates :categorie, inclusion: {in: ["Coussin", "Plaid", "Dessus de lit", "Nappe", "Rideau", "Tapis"]}, presence: true
  has_many :tepictures, :dependent => :destroy

  accepts_nested_attributes_for :tepictures, allow_destroy: true
  mount_uploader :tephoto, TephotoUploader
end
