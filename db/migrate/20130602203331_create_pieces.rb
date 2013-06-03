class CreatePieces < ActiveRecord::Migration
  def change
    create_table :pieces do |t|
      t.integer :outfit_id
      t.integer :element_id

      t.timestamps
    end
  end
end
