require "any_login_multiple/version"
require "any_login_multiple/engine"

module AnyLoginMultiple
  extend ActiveSupport::Autoload
  autoload :Helpers

  mattr_accessor :klass_names
  @@klass_names = ['User']

  def self.klasses
    @@klasses = AnyLoginMultiple.klass_names.map(&:constantize)
  end
end

