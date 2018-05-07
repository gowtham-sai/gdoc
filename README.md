# Gdoc - [Not Ready Yet!]
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

## Idea:
I have use case where I wanted to generate api docs. Tried different gems
where we need to add some code to production code rather than specs or need to
have too much of additional code to generate api docs.
So started this with following idea:

* Determine
    0. headers, params from **request**
    0. status code, response type, response from **response**
    <br>
    from example(spec) block.
* Determines example(Resource) group either by based on super class or request path.
* Generate the api_doc and store it.
* Once generated, lock the generated api_doc, so that it can be used  to verify after each commit.

 It works by hooking to rspec hooks which requires no more code.
 Currently sorted out all the above steps except generating api_doc and locking it.

## Usage (WIP)
You just need to run rspec, gem is cleaver enough to figure it out.
Requirements:
In your spec file, whenever you want to document a request, just `:api_doc => true` as shown below.

0. You must add `api_doc => true` to spec
0. spec must and should have request and response objects.

```ruby
  it "should be authenticated user last accessed is with in last 10 minutes", :api_doc => true do
    @depreciation = true
    @required_headers = {'X-AUTH-TOKEN' => authenticated_user.auth_token}
    @other_headers = {'RESOURCE' => 'some_resource', 'X-AUTH-TOKEN' => :invalid_auth_token}
    @required_params = {'resource_id' => 8}
    @other_params = {'limit' => 2}

    request.headers.merge!(headers) # headers is created for you
    get :fake_action, params: params # params is created for you

    expect(response).to have_http_status(200)
  end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

**Not production ready to publish this., once ready will publish.**

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/gowtham-sai/gdoc. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Gdoc project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/gowtham-sai/gdoc/blob/master/CODE_OF_CONDUCT.md).

## Laundry List
0. Yet to implement request headers, request params and other things
0. Yet to figure out, implementing way to store and generate doc in ideal way.
0. Yet to figure out, locking the generated api doc
0. Yet to figure out, how to retest the api whenever spec runs against existing generated doc and evaluate it.
