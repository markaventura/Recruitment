class HomeEmployeeController < ApplicationController
	def index
		if employee_signed_in?
			redirect_to :controller=>'dashboard_employee', :action => 'index'
		end
	end
end
