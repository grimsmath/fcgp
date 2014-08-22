class Category < ActiveRecord::Base
  has_and_belongs_to_many :vendors, :join_table => "category_vendors"

  has_ancestry
end
