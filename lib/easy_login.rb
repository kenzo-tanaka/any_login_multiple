require "easy_login/version"
require "easy_login/engine"

module EasyLogin
  extend ActiveSupport::Autoload

  autoload :Helpers

  mattr_accessor :klass_name

  def self.klass
    @@klass = EasyLogin.klass_name.constantize
  end
end

require 'easy_login/routes'
