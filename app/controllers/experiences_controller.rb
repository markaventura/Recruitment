class ExperiencesController < ApplicationController
	respond_to :html, :json
	def index
		@experiences = Experience.all
	end

	def new
		@experience = Experience.new
	end

	def edit
		@experience = Experience.find(params[:id])
	end

	def create
		@experience = Experience.new(params[:experience])

		if @experience.save
			redirect_to root_path, :notice => "your post was saved"
		else
			render "new"
		end
	end

	def update
		@experience = Experience.find(params[:id])

		if @experience.update_attributes(params[:experience])
			redirect_to empprofiles_path, :notice => "The information has been successfully updated."
		else
			render "edit"
		end
	end

	def destroy
		@experience = Experience.find(params[:id])
		@experience.destroy
		redirect_to empprofiles_path, :notice => "The information has been successfully updated."
		
	end
end
