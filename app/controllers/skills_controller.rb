class SkillsController < ApplicationController
	def index
		@skills = Skill.all
	end

	def new
		@skill = Skill.new
	end

	def edit
		@skill = Skill.find(params[:id])
	end

	def create
		@skill = Skill.new(params[:skill])

		if @skill.save
			redirect_to root_path, :notice => "your post was saved"
		else
			render "new"
		end
	end

	def update
		@skill = Skill.find(params[:id])

		if @skill.update_attributes(params[:skill])
			redirect_to empprofiles_path, :notice => "The information has been successfully updated."
		else
			render "edit"
		end
	end
	def destroy
		@skill = Skill.find(params[:id])
		@skill.destroy
		redirect_to empprofiles_path, :notice => "The information has been successfully updated."
	end
end
