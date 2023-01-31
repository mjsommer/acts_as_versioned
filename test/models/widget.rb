# frozen_string_literal: true

class Widget < ActiveRecord::Base
  acts_as_versioned association_options: {
    dependent: :nullify
  }

  non_versioned_columns << "foo"
end
