class Authentication < ActiveRecord::Base
	belongs_to :employee
  attr_accessible :provider, :uid, :employee_id, :title
end
