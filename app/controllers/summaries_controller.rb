class SummariesController < ApplicationController
	respond_to :html, :json
	def index
		@summaries = Summary.all
	end

	def new
		@summary = Summary.new
	end

	def edit
		@summary = Summary.find(params[:id])
	end

	def create
		@summary = Summary.new(params[:summary])

		if @summary.save
			redirect_to root_path, :notice => "your post was saved"
		else
			render "new"
		end
	end

	def update
		@summary = Summary.find(params[:id])

		if @summary.update_attributes(params[:summary])
			redirect_to empprofiles_path, :notice => "The information has been successfully updated."
		else
			render "edit"
		end
	end

	def destroy
		@summary = Summary.find(params[:id])
		@summary.destroy
		redirect_to empprofiles_path, :notice => "The information has been successfully updated."
	end
end
