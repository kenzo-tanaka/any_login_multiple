# EasyLogin

This gem is inspired by [any_login](https://github.com/igorkasyanchuk/any_login).
This gem supports multiple model support.

## Installation

First of all, this gem only work in an environment
where [devise](https://github.com/heartcombo/devise) is installed.

Add this line to your application's Gemfile:

```ruby
group :development do
  gem 'easy_login'
end
```

And then execute:
```bash
$ bundle install
```

Add `config/initializers/easy_login.rb` and set `klass_names`:

```rb
EasyLogin.klass_names = ['User', 'Staff']
```

## Usage

Add this line to `application.html.erb`:

```erb
<%= easy_login_here if Rails.env.development? %>
```

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
