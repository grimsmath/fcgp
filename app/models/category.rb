class Category < ActiveRecord::Base
  has_and_belongs_to_many :vendors, :join_table => "categories_vendors"

  has_ancestry
end
