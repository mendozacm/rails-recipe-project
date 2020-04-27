  
class OmniauthCallbacksController < Devise::OmniauthCallbacksController
    def all
      user = User.from_omniauth(request.env["omniauth.auth"], request.env["omniauth.params"])
      if user.persisted?
        flash.notice = "Signed in!"
        sign_in_and_redirect(user) and return
      else
        user.save
        flash.notice = "Created account!"
        sign_in_and_redirect(user) and return
      end
    end
  
    
    alias_method :facebook, :all
   
  end