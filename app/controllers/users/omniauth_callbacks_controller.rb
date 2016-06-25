class Users::OmniauthCallbacksController < ApplicationController
  def facebook
   @user = User.from_omniauth(request.env["omniauth.auth"])

   if @user.persisted?
	  @user.remember_me = true
	  sign_in_and_redirect @user, event: :authentication
   end 
    session["devise.auth"] = request.env["omniauth.auth"]
    render :turist
   end

   def custom_sign_up
   	@user = User.from_omniauth(session["devise.auth"])
   	if @user.update(user_params)
     sign_in_and_redirect @user, event: :authentication
     return
    else
      session["devise.auth"] = request.env["omniauth.auth"]
      render :edit
   end
 end
end

def failure
    redirect_to new_user_session_path, notice: "No pudimos loguearte."
  end

 private 
    def user_params
      #parametros Fuertes
    params.require(:user).permit(:name,:username,:email)  
    end
