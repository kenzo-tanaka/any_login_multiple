module EasyLogin
  class ApplicationController < ActionController::Base
    def easy_login
      @user = EasyLogin.klass.find(params[:id])

      # Call devise sign in method
      sign_in :user, @user

      redirect_to main_app.root_path
    end
  end
end
