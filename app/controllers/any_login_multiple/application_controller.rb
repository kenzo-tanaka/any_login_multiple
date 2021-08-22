module AnyLoginMultiple
  class ApplicationController < ActionController::Base
    def any_login_multiple
      reset_session

      klass_string = params[:as]
      @user = klass_string.constantize.find(params[:id])

      # Call devise sign in method
      sign_in klass_string.parameterize.underscore.to_sym, @user

      redirect_to main_app.root_path
    end
  end
end
