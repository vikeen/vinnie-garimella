class Artwork < ActiveRecord::Base
  belongs_to :artwork_type

  attr_accessible :artwork_types_id, :description, :attachment, :name
  has_attached_file :attachment, :styles => { :normal => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

  validates :name, presence: true
  validates :artwork_types_id, presence: true
  validates :attachment, presence: true
  validates :description, presence: true
end
