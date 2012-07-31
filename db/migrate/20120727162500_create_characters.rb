class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.string :address
      t.float :longitude
      t.boolean :gmaps

      t.timestamps
    end
  end
end
