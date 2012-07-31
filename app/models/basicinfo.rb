class Basicinfo < ActiveRecord::Base
  attr_accessible :industry, :citizenship, :languages, :photo, :address, :birthdated, :birthdatem, :birthdatey, :city, :country, :country, :currentposition, :email, :firstname, :lastname, :maritalstatus, :middlename, :phonenumber, :state, :user_id

  has_attached_file :photo
  belongs_to :empprofiles
end
