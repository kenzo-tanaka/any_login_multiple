module EasyLogin
  class ApplicationController < ActionController::Base
    def easy_login
      klass_string = params[:as]
      @user = klass_string.constantize.find(params[:id])

      # Call devise sign in method
      sign_in klass_string.parameterize.underscore.to_sym, @user

      redirect_to main_app.root_path
    end
  end
end
