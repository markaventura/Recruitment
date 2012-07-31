class CharactersController < ApplicationController
	def index
		@json = Character.all.to_gmaps4rails
	end
end
