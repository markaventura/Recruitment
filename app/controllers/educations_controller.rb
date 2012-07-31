class EducationsController < ApplicationController
	def index
		@educations = Education.all
	end

	def new
		@education = Education.new
	end

	def edit
		@education = Education.find(params[:id])
	end

	def create
		@education = Education.new(params[:education])

		if @education.save
			redirect_to root_path, :notice => "your post was saved"
		else
			render "new"
		end
	end

	def update
		@education = Education.find(params[:id])

		if @education.update_attributes(params[:education])
			redirect_to empprofiles_path, :notice => "The information has been successfully updated."
		else
			render "edit"
		end
	end

	def destroy
		@education = Education.find(params[:id])
		@education.destroy
		redirect_to empprofiles_path, :notice => "The information has been successfully updated."
	end
end
