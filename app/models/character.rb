class Character < ActiveRecord::Base
  attr_accessible :address, :gmaps, :longitude, :name

 acts_as_gmappable

def gmaps4rails_address
address
end
end
