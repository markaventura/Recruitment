class Education < ActiveRecord::Base
  attr_accessible :location, :country ,:datesattendedfrom, :datesattendedto, :degree, :fieldofstudy, :schoolname, :user_id, :activitiesandsocieties, :additionalnotes
end
