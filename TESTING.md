# Testing the Cookbook #

This cookbook uses [bundler](http://gembundler.com/) and [berkshelf](http://berkshelf.com/) to isolate dependencies.
Make sure you have `ruby 1.9.x`, `bundler`, `rake`, build essentials and the header files for `gecode` installed before continuing. Make sure that you're using gecode version 3. More info [here](https://github.com/opscode/dep-selector-libgecode/tree/0bad63fea305ede624c58506423ced697dd2545e#using-a-system-gecode-instead).

We have four test suites which you can run either, individually (there are three rake tasks):

    $ rake lint
    $ rake style
    $ rake knife
    $ rake unit

or altogether:

    $ rake test

The `rake` tasks will take care of installing the needed gem dependencies and cookbooks with `berkshelf`.

## Rubocop  ##

[Rubocop](https://github.com/bbatsov/rubocop) is a static Ruby code analyzer, based on the community [Ruby style guide](https://github.com/bbatsov/ruby-style-guide). We are attempting to adhere to this where applicable, slowly cleaning up the cookbooks until we can turn on Rubocop for gating the commits.

### Attribute Rules ###

Since there are slight style differences between the coding of attributes, recipes and metadata files there are specific `.rubocop.yml` files for each of:

   [Gemfile and metadata.rb](.rubocop.yml)
   [attributes/*.rb](attributes/.rubocop.yml)
   [recipes/.rubocop.yml](recipes/.rubocop.yml)
   [spec/.rubocop.yml](spec/.rubocop.yml)

## Knife ##

[knife cookbook test](http://docs.opscode.com/chef/knife.html#test) is used to check the cookbook's Ruby and ERB files for basic syntax errors.

## Foodcritic ##

[Foodcritic](http://acrmp.github.io/foodcritic/) is a lint tool for Chef cookbooks. We ignore the following rules:

[FC003](http://acrmp.github.io/foodcritic/#FC003) these cookbooks are not intended for Chef Solo.

## Chefspec

[ChefSpec](http://code.sethvargo.com/chefspec/) is a unit testing framework for testing Chef cookbooks. ChefSpec makes it easy to write examples and get fast feedback on cookbook changes without the need for virtual machines or cloud servers.
