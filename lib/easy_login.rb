require "easy_login/version"
require "easy_login/engine"

module EasyLogin
  extend ActiveSupport::Autoload

  autoload :Helpers

  mattr_accessor :klass_names
  @@klass_names = ['User']

  mattr_accessor :klass_name

  def self.klasses
    @@klasses = EasyLogin.klass_names.map(&:constantize)
  end

  # TODO: remove me
  def self.klass
    @@klass = EasyLogin.klass_name.constantize
  end
end

require 'easy_login/routes'
