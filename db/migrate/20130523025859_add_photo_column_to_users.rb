class AddPhotoColumnToUsers < ActiveRecord::Migration
  def self.up
    add_attachment :outfits, :photo
  end
  def self.down
    remove_attachment :outfits, :photo
  end
end
