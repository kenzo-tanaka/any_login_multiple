require_relative "lib/easy_login/version"

Gem::Specification.new do |spec|
  spec.name        = "any_login_multiple"
  spec.version     = EasyLogin::VERSION
  spec.authors     = ["kenzo-tanaka"]
  spec.email       = ["kenzou.kenzou104809@gmail.com"]
  spec.homepage    = "https://github.com/kenzo-tanaka/easy_login"
  spec.summary     = "Easy login with devise, multiple model"
  spec.description = "Easy login with devise, multiple model"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.

  spec.add_development_dependency "devise"

  spec.metadata["homepage_uri"] = 'https://github.com/kenzo-tanaka/easy_login'
  spec.metadata["source_code_uri"] = 'https://github.com/kenzo-tanaka/easy_login'
  spec.metadata["changelog_uri"] = "https://github.com/kenzo-tanaka/easy_login/blob/main/CHANGELOG.md"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.1.4", ">= 6.1.4.1"
end
