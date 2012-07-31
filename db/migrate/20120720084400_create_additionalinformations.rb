class CreateAdditionalinformations < ActiveRecord::Migration
  def change
    create_table :additionalinformations do |t|
      t.string :user_id
      t.string :website1
      t.string :website2
      t.string :website3
      t.string :interest
      t.string :groupandassociations
      t.string :honorsandawards

      t.timestamps
    end
  end
end
