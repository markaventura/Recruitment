class BasicinfosController < ApplicationController
	respond_to :html, :json
def index
		@basicinfos = Basicinfo.where(:user_id => params[:format])

		@summaries = Summary.where(:user_id => params[:format])
		@experiences = Experience.where(:user_id => params[:format])
		@skills = Skill.where(:user_id => params[:format])
		@educations = Education.where(:user_id => params[:format])
		@othereducations = Othereducation.where(:user_id => params[:format])
		@additionalinformations = Additionalinformation.where(:user_id => params[:format])
		
	end

	def new
		@basicinfo = Basicinfo.new
	end

	def edit
		@basicinfo = Basicinfo.find(params[:id])
	end

	def editpersonalinfo
		@basicinfo = Basicinfo.find(params[:id])
	end

	def create
		@basicinfo = Basicinfo.new(params[:basicinfo])

		if @basicinfo.save
			redirect_to root_path, :notice => "your post was saved"
		else
			render "new"
		end
	end

	def showresume
		@basicinfos = Basicinfo.where(:user_id => "1" )
	end

	def show

		@basicinfos = Basicinfo.where(:user_id => params[:id] )
		@summaries = Summary.where(:user_id => params[:id] )
		@experiences = Experience.where(:user_id => params[:id] )
		@skills = Skill.where(:user_id => params[:id] )
		@educations = Education.where(:user_id => params[:id] )
		@othereducations = Othereducation.where(:user_id => params[:id] )
		@additionalinformations = Additionalinformation.where(:user_id => params[:id] )

		respond_to do |format|
			format.html
			format.pdf do
				pdf = BasicinfoPdf.new(@basicinfos, @educations, @experiences, @othereducations, @skills)
				send_data pdf.render, filename: "Employee.pdf", type: "application/pdf", disposition: "inline"
			end
		end
	end

	def update
		@basicinfo = Basicinfo.find(params[:id])
		if @basicinfo.update_attributes(params[:basicinfo])
			redirect_to empprofiles_path, :notice => "The information has been successfully updated."
		else
			render "edit"
		end
	end
end
