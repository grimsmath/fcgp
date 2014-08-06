class Category < ActiveRecord::Base
  has_many :vendors

  has_ancestry
end
