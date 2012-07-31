class AuthenticationsController < ApplicationController
  def index
    @authentications = current_employee.authentications if current_employee
  end

  def create
    omniauth = request.env["omniauth.auth"] 
    authentication = Authentication.find_by_provider_and_uid(omniauth['provider'], omniauth['uid'])
    if authentication
      flash[:notice] = "signed in Successfull"
      sign_in_and_redirect(:employee, authentication.employee)
    else

    current_employee.authentications.create(:provider => omniauth['provider'], :uid => omniauth['uid'])
    flash[:notice] = "Authentication Successfull"
    redirect_to authentications_url
  end
  end

  def destroy
    @authentication = current_employee.authentications.find(params[:id])
    @authentication.destroy
    redirect_to authentications_url, :notice => "Successfully destroyed authentication."
  end
end
