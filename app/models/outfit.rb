class Outfit < ActiveRecord::Base
  attr_accessible :description, :name, :username, :email, :style, :approval
  attr_accessible :photo
  has_attached_file :photo,
  :styles => { :medium => "300x300>", :thumb => "100x100>" },
  :storage => :s3,
  :s3_credentials => "#{Rails.root}/config/s3.yml",
  :path => ":attachment/:id/:style/:basename.:extension",
  :bucket => "danish-webdevclass-shoppingapp-phototest"
end
