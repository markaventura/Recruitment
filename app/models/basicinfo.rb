class Basicinfo < ActiveRecord::Base
  attr_accessible :industry, :citizenship, :languages, :photo, :address, :birthdated, :birthdatem, :birthdatey, :city, :country, :country, :currentposition, :email, :firstname, :lastname, :maritalstatus, :middlename, :phonenumber, :state, :user_id

  has_attached_file :photo
  belongs_to :empprofiles
  belongs_to :basicinfos

  def industry_name
  	basicinfos.try(:industry)
  end

  def industry_name=(name)
  	self.basicinfos = Basicinfos.find_by_industry(name) if name.present?
  end
end
