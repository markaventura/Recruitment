class CreateEmpprofiles < ActiveRecord::Migration
  def change
    create_table :empprofiles do |t|
      t.string :account
      t.string :activitiesandsocieties
      t.string :address
      t.string :birthday
      t.string :companyname
      t.string :currentposition
      t.string :datesattended
      t.string :degree
      t.string :description
      t.string :email
      t.string :fieldofstudy
      t.string :firstname
      t.string :groupandassociations
      t.string :honorsandawrds
      t.string :interest
      t.string :lastname
      t.string :location
      t.string :maritalstatus
      t.string :phonenumber
      t.string :professionalexperienceandgoals
      t.string :schoolname
      t.string :skillsandexpertise
      t.string :title
      t.string :websites
      t.string :city
      t.string :country
      t.string :middlename
      t.string :position
      t.string :timeperiodfrom
      t.string :timeperiodto
      t.string :timeperiodfromyear
      t.string :timeperiodtoyear
      t.string :dateattendedfrom
      t.string :dateattendedto
      t.string :additionalnotes
      t.string :website1
      t.string :website2
      t.string :website3

      t.timestamps
    end
  end
end
