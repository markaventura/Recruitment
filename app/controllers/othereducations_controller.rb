class OthereducationsController < ApplicationController
	def index
		@othereducations = Othereducation.all
	end

	def new
		@othereducation = Othereducation.new
	end

	def edit
		@othereducation = Othereducation.find(params[:id])
	end

	def create
		@othereducation = Othereducation.new(params[:othereducation])

		if @othereducation.save
			redirect_to root_path, :notice => "your post was saved"
		else
			render "new"
		end
	end

	def update
		@othereducation = Othereducation.find(params[:id])

		if @othereducation.update_attributes(params[:othereducation])
			redirect_to empprofiles_path, :notice => "The information has been successfully updated."
		else
			render "edit"
		end
	end

	def destroy
		@othereducation = Othereducation.find(params[:id])
		@othereducation.destroy
		redirect_to empprofiles_path, :notice => "The information has been successfully updated."
	end
end