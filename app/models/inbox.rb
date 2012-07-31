class Inbox < ActiveRecord::Base
  attr_accessible :companyname, :location, :message, :subject, :user_id, :telephone, :mobile, :email
end
