class EmpprofilesController < ApplicationController

	
	
	def index
		@authentications = current_employee.authentications if current_employee

		@empprofiles = Empprofile.all
		@basicinfos = Basicinfo.all
		@summaries = Summary.all
		@experiences = Experience.all
		@skills = Skill.all
		@educations = Education.all
		@additionalinformations = Additionalinformation.all
		@othereducations = Othereducation.all
		if (current_employee!=nil)
@inboxes = Inbox.where(:user_id => current_employee.id.to_s)
		end
		
	end

	def indexforhr
		@empprofiles = Empprofile.all
		@basicinfos = Basicinfo.all
	end

	def show
		@empprofile = Empprofile.find(params[:id])
		@inbox = Inbox.where(params[:id])
	end

	def new
		@empprofile = Empprofile.new
	end

	def newsummary
		@empprofile = Empprofile.new
	end

	def newexperience
		@empprofile = Empprofile.new
	end

	def newskills
		@empprofile = Empprofile.new
	end

	def newschool
		@empprofile = Empprofile.new
	end

	def newinfo
		@empprofile = Empprofile.new
	end

	def create

		@empprofile = Empprofile.new(params[:empprofile])

		if @empprofile.save
			UserMailer.signup_confirmation(@empprofiles).deliver
			redirect_to empprofiles_path, :notice => "your post was saved"
		else
			render "new"
		end


	end

	def edit
		@empprofile = Empprofile.find(params[:id])
	end

	def editresume
		@empprofile = Empprofile.find(params[:id])
	end
    
    def editsummary
    	@empprofile = Empprofile.find(params[:id])
    end

    def editposition
    	@empprofile = Empprofile.find(params[:id])
    end

    def editskills
    	@empprofile = Empprofile.find(params[:id])
    end

    def editeducation
    	@empprofile = Empprofile.find(params[:id])
    end

    def editadditionalinfo
    	@empprofile = Empprofile.find(params[:id])
    end

    def editpersonalinfo
    	@empprofile = Empprofile.find(params[:id])
    end

	def update
		@empprofile = Empprofile.find(params[:id])

		if @empprofile.update_attributes(params[:empprofile])
			redirect_to empprofiles_path, :notice => "The information has been successfully updated."
		else
			render "edit"
		end
	end

	def destroy
		@empprofile = Empprofile.find(params[:id])
		@empprofile.destroy
		redirect_to empprofiles_path, :notice => "The information has been successfully updated."
		
	end
end
