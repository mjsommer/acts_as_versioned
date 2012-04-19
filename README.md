## About ##
=====

acts_as_versioned is a gem for Rails 3.1 & 3.2 to enable easy versioning of models. As a versioned model is updated revisions are kept in a seperate table, providing a record of what changed.

## Getting Started ##
=====

In your Gemfile simply include:

    gem 'acts_as_versioned', :git => 'https://github.com/jwhitehorn/acts_as_versioned.git'
    
The next time you run `bundle install` you'll be all set to start using `acts_as_versioned`.  

## Usage ##
=====

#### Versioning a Model ####
By default acts_as_versioned is unobtrusive. You will need to explicitly state which models to version. To do so, add the line `acts_as_versioned` to your model, like so:

    class MyModel < ActiveRecord::Base
      acts_as_versioned
      #...
    end
    
Next we need to create a migration to setup our versioning tables:

    bundle exec rails generate migration AddVersioningToMyModel
    
Once that is completed, edit the generated migration. acts_as_versioned patches your model to add a `create_versioned_table` and `drop_versioned_table` method. A migration for `MyModel` (assuming MyModel already existed) might look like:

    class AddVersioningToMyModel < ActiveRecord::Migration
      def self.up
        MyModel.create_versioned_table
      end

      def self.down
        MyModel.drop_versioned_table
      end
    end

Execute your migration:
    
    bundle exec rake db:migrate
    
And your finished! Without any addition work `MyModel` being versioned.

#### Revisions ####
TODO

#### Migrations ####