# Gdoc
[![Build Status](https://travis-ci.com/gowtham-sai/gdoc.svg?token=n5jvvUkFzpsYs3Nax4Qu&branch=master)](https://travis-ci.com/gowtham-sai/gdoc)
[![Coverage Status](https://coveralls.io/repos/github/gowtham-sai/gdoc/badge.svg?branch=master)](https://coveralls.io/github/gowtham-sai/gdoc?branch=master)
[![Test Coverage](https://api.codeclimate.com/v1/badges/3b7223093794cabcc7ef/test_coverage)](https://codeclimate.com/github/gowtham-sai/gdoc/test_coverage)
[![Maintainability](https://api.codeclimate.com/v1/badges/3b7223093794cabcc7ef/maintainability)](https://codeclimate.com/github/gowtham-sai/gdoc/maintainability)

Gdoc - API documentation generated from rspecs.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'gdoc'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gdoc

## Usage
You just need to run rspec, gem is cleaver enough to figure it out.
Requirements:
In your spec file, whenever you want to document a request, just `:api_doc => true` as shown below.
	1. You must add `api_doc => true` to spec
	2. spec must and should have request and response objects.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/gowtham-sai/gdoc. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Gdoc project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/gowtham-sai/gdoc/blob/master/CODE_OF_CONDUCT.md).
