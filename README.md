SpreeOrganizations
==================

Allows the ability to create an organization and add/remove members to it.  You can allow users to share various operations such as buy on behalf of an organization using the same billing info, etc.

Installation
------------

Add spree_organizations to your Gemfile:

```ruby
gem 'spree_organizations'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g spree_organizations:install
```

Testing
-------

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

```shell
bundle
bundle exec rake test_app
bundle exec rspec spec
```

When testing your applications integration with this extension you may use it's factories.
Simply add this require statement to your spec_helper:

```ruby
require 'spree_organizations/factories'
```

Copyright (c) 2013 [name of extension creator], released under the New BSD License
=======
spree_organizations
===================

