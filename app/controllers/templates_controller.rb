class TemplatesController < ApplicationController
	def index
		@templates = Template.all
	end

	def new
		@template = Template.new
	end

	def basicinfo
		@template = Template.new
	end
end
