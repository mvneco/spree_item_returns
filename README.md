SpreeItemReturns
==================

This extension provides customer an interface to track their 'Return History' and also allows them to create return authorizations.

## FEATURES

* Adds a tab for a user to keep track of all his/her return authorizations.
* Provides user an ability to create a return authorization against an order.

## Installation

1. Add this extension to your Gemfile with this line:

  #### Spree >= 3.2

  ```ruby
    gem 'spree_item_returns' , github: 'vinsol-spree-contrib/spree_item_returns'
  ```

  Alternatively, you can also use specific versions too.
  ```ruby
    gem 'spree_item_returns', '~> 3.x.0'
  ```

  #### Spree < 3.2

  ```ruby
  gem 'spree_item_returns', github: 'vinsol-spree-contrib/spree_item_returns', branch: 'X-X-stable'
  ```

  The `branch` option is important: it must match the version of Spree you're using.
  For example, use `3-0-stable` if you're using Spree `3-0-stable` or any `3.0.x` version.

2. Install the gem using Bundler:
  ```shell
  bundle install
  ```

3. Copy & run migrations
  ```shell
  bundle exec rails g spree_item_returns:install
  ```

4. Run migrations
  ```shell
  bundle exec rake db:migrate
  ```

5. Restart your server

## Working

### To view Return history

  1. Go to Account -> 'Return History' Button.
     A list of all return made by users will be shown.
  2. User can select individual return and see it's details.

### To create Return
  1. Go to Account
  2. Open order which has return item.
  3. Click on 'Return Product' button.
  4. Select the product which need to be returned, and fill fields with appropriate data. And click on 'Create'

**Here is a detailed article with screenshots on how does it work: http://vinsol.com/spreecommerce-items-return**


## Testing

  #### Spree >= 3.1

  For Building Dependencies:
  ```shell
  appraisal install
  ```

  The dummy app can be regenerated by using:
  ```shell
  appraisal spree-3-1 rake test_app

  ```
  This will run rake test_app using the dependencies configured for Spree 3.1. Similarly you can use spree-3-2 and spree-master for generating dummy applications using dependencies for Spree 3.2 and latest version of Spree


  ```shell
  appraisal spree-3-1 rspec
  ```
  This will run rspec using the dependencies configured for Spree 3.1. Similarly you can use spree-3-2 and spree-master to run rspec using dependencies for Spree 3.2 and latest version of Spree


  #### Spree 3.0 and Spree 2.x

  First bundle your dependencies, then run `rake`. `rake` will default to building the dummy app if it does not exist, then it will run specs. The dummy app can be regenerated by using `rake test_app`.

  ```shell
  bundle
  bundle exec rspec spec
  ```

## Contributing

1. [Fork](https://help.github.com/articles/fork-a-repo) the project
2. Make one or more well commented and clean commits to the repository. You can make a new branch here if you are modifying more than one part or feature.
3. Add tests for it. This is important so I don’t break it in a future version unintentionally.
4. Perform a [pull request](https://help.github.com/articles/using-pull-requests) in github's web interface.


Credits
-------

[![vinsol.com: Ruby on Rails, iOS and Android developers](http://vinsol.com/vin_logo.png "Ruby on Rails, iOS and Android developers")](http://vinsol.com)

Copyright (c) 2017 [vinsol.com](http://vinsol.com "Ruby on Rails, iOS and Android developers"), released under the New MIT License
