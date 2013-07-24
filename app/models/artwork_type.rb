class ArtworkType < ActiveRecord::Base
  has_many :artworks

  attr_accessible :name

  validates :name, presence: true
end
