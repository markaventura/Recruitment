class Experience < ActiveRecord::Base
  attr_accessible :location, :timeperiodfrom, :timeperiodfromyear, :timeperiodto, :timeperiodtoyear, :title, :user_id, :companyname, :description
end
