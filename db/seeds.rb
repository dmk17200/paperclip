# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Outfit.destroy_all

admin_hash = [
  {:name => "danish", :password => "admin"}
]

Admin.destroy_all
admin_hash.each do |a_hash|
  a = Admin.new
  a.name = a_hash[:name]
  a.password = a_hash[:password]
  a.save
end

Piece.destroy_all

