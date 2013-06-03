class Piece < ActiveRecord::Base
  attr_accessible :element_id, :outfit_id
  belongs_to :element
  belongs_to :outfit
end
