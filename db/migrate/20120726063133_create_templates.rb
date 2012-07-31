class CreateTemplates < ActiveRecord::Migration
  def change
    create_table :templates do |t|
      t.string :basicinfo
      t.string :firstname
      t.string :middlename
      t.string :lastname
      t.string :personal
      t.string :citizenship
      t.string :email
      t.string :birthdate
      t.string :languages
      t.string :education
      t.string :degree
      t.string :school
      t.string :schoollocation
      t.string :country
      t.string :position
      t.string :title
      t.string :companyname
      t.string :description
      t.string :skill
      t.string :careersummary
      t.string :title
      t.string :companyname
      t.string :training

      t.timestamps
    end
  end
end
