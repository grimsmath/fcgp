class Location < ActiveRecord::Base
  belongs_to :user
  belongs_to :vendor
  belongs_to :address
end
