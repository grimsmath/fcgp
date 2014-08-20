class Location < ActiveRecord::Base
  belongs_to :locatable, polymorphic: true

  validates_presence_of :street1, :street2, :city, :state, :postal_code
end
