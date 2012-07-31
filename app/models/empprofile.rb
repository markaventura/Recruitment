class Empprofile < ActiveRecord::Base
  attr_accessible :account, :activitiesandsocieties, :additionalnotes, :photo, :address, :birthday, :city, :companyname, :country, :currentposition, :dateattendedfrom, :dateattendedto, :datesattended, :degree, :description, :email, :fieldofstudy, :firstname, :groupandassociations, :honorsandawrds, :interest, :lastname, :location, :maritalstatus, :middlename, :phonenumber, :position, :professionalexperienceandgoals, :schoolname, :skillsandexpertise, :timeperiodfrom, :timeperiodfromyear, :timeperiodto, :timeperiodtoyear, :title, :website1, :website2, :website3, :websites, :state, :photo

  has_attached_file :photo
end
