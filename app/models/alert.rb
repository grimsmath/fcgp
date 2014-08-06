class Alert < ActiveRecord::Base
  enum type: [:important, :informational, :warning]
end
