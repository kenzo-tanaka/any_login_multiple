require "easy_login/version"
require "easy_login/engine"

module EasyLogin
  extend ActiveSupport::Autoload

  autoload :Helpers
end

require 'easy_login/routes'
