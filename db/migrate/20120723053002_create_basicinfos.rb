class CreateBasicinfos < ActiveRecord::Migration
  def change
    create_table :basicinfos do |t|
      t.string :country
      t.string :currentposition
      t.string :firstname
      t.string :lastname
      t.string :user_id
      t.string :phonenumber
      t.string :email
      t.string :address
      t.string :city
      t.string :state
      t.string :country
      t.string :birthdatem
      t.string :birthdated
      t.string :birthdatey
      t.string :maritalstatus
      t.string :middlename

      t.timestamps
    end
  end
end
