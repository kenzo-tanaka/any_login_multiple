# EasyLogin

This gem is inspired by [any_login](https://github.com/igorkasyanchuk/any_login).
This gem supports multiple model support.

## Installation

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

## Usage

Add this line to `application.html.erb`:

```erb
<%= easy_login_here if Rails.env.development? %>
```

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
