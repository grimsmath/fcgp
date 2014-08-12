class AddTermsBooleanToVendor < ActiveRecord::Migration
  def change
    add_column :vendors, :accepted, :boolean
  end
end
