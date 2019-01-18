class Accessoire < ApplicationRecord
  validates :titre, presence: true
  validates :description, presence: true
  validates :prix, presence: true
  validates :visible, inclusion: {in: [true, false]}
  validates :categorie, inclusion: {in: ["Etole", "Tablier"]}, presence: true
  validates :aphoto, presence: true
  has_many :apictures, :dependent => :destroy
  accepts_nested_attributes_for :apictures, allow_destroy: true
  mount_uploader :aphoto, AphotoUploader
end
