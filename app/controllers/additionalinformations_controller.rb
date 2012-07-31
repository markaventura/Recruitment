class AdditionalinformationsController < ApplicationController
	def index
		@additionalinformations = Additionalinformation.all
	end

	def new
		@additionalinformation = Additionalinformation.new
	end

	def edit
		@additionalinformation = Additionalinformation.find(params[:id])
	end

	def create
		@additionalinformation = Additionalinformation.new(params[:additionalinformation])

		if @additionalinformation.save
			redirect_to root_path, :notice => "your post was saved"
		else
			render "new"
		end
	end

	def update
		@additionalinformation = Additionalinformation.find(params[:id])

		if @additionalinformation.update_attributes(params[:additionalinformation])
			redirect_to empprofiles_path, :notice => "The information has been successfully updated."
		else
			render "edit"
		end
	end
	def destroy
		@additionalinformation = Additionalinformation.find(params[:id])
		@additionalinformation.destroy
		redirect_to empprofiles_path, :notice => "The information has been successfully updated."
	end
end
