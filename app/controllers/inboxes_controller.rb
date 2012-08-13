class InboxesController < ApplicationController
	def index
		
	end

	def show
		@inbox = Inbox.find(params[:id])
	end

	def sendmessage
		@inbox = Inbox.new
		@basicinfo = Basicinfo.find(params[:id])
	end

	def create
		@inbox = Inbox.new(params[:inbox])
		if @inbox.save
			InboxMailer.sigup_confirmation(@inbox).deliver
			redirect_to @inbox, :notice => "message sent!"
		else
			render "new"
		end
	end

	def mymessages
		@inboxes = Inbox.where(:user_id => params[:id])
	end

	def destroy
		@inbox = Inbox.find(params[:id])
		@inbox.destroy
		redirect_to mymessages_inbox_path(current_employee.id), :notice => "The information has been successfully updated."
	end
end
