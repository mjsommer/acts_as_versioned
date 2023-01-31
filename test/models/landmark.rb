# frozen_string_literal: true

class Landmark < ActiveRecord::Base
  acts_as_versioned if_changed: %i[name longitude latitude]
  non_versioned_columns << "doesnt_trigger_version"
end
