module EasyLogin
  module Helpers
    extend ActiveSupport::Concern

    def easy_login_here
      render 'easy_login/easy_login'
    end
  end
end
