class AddDetailsToOutfits < ActiveRecord::Migration
  def change
    add_column :outfits, :username, :string
    add_column :outfits, :email, :string
    add_column :outfits, :style, :string
    add_column :outfits, :approval, :boolean
  end
end
