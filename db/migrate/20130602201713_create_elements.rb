class CreateElements < ActiveRecord::Migration
  def change
    create_table :elements do |t|
      t.string :article

      t.timestamps
    end
  end
end
