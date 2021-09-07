class Landmark < ActiveRecord::Base
  acts_as_versioned :if_changed => [ :name, :longitude, :latitude ]
  self.non_versioned_columns << 'doesnt_trigger_version'
end
