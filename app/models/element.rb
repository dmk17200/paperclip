class Element < ActiveRecord::Base
  has_many :pieces
  attr_accessible :article
end
