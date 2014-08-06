class AddUrlEmailToVendor < ActiveRecord::Migration
  def change
    add_column :vendors, :url, :string
    add_column :vendors, :email, :string
  end
end
