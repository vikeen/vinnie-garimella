class Artwork < ActiveRecord::Base
  attr_accessible :artwork_type_id, :description, :filename, :name
end
