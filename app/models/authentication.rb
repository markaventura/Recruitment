class Authentication < ActiveRecord::Base
	belongs_to :employee
  attr_accessible :user_id, :provider, :uid, :employee_id, :title
end
