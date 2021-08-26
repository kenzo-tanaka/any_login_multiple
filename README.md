# AnyLoginMultiple

This gem is inspired by [any_login](https://github.com/igorkasyanchuk/any_login).
This gem supports multiple models.

![any-login-multiple-demo-v2](https://user-images.githubusercontent.com/33926355/130531912-5332fd94-078d-4d91-bdda-9f92bbe9da39.gif)

## Installation

**First of all, this gem only work in an environment
where [devise](https://github.com/heartcombo/devise) is installed.**

Add this line to your application's Gemfile:

```ruby
group :development, :test do
  gem 'any_login_multiple'
end
```

And then execute:
```bash
$ bundle install
```

Add this line to `routes.rb`:

```rb
mount AnyLoginMultiple::Engine => '/any_login_multiple' if Rails.env.development?
```

Add this lines to `config/environments/development.rb`:

```rb
config.after_initialize do
  AnyLoginMultiple.klass_names = ['User', 'Staff']
end
```

## Usage

Add this line to `application.html.erb`:

```erb
<%= any_login_multiple_here if Rails.env.development? %>
```

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
