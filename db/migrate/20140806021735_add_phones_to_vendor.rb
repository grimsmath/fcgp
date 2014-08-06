class AddPhonesToVendor < ActiveRecord::Migration
  def change
    add_column :vendors, :phone_work, :string
    add_column :vendors, :phone_alt, :string
    add_column :vendors, :phone_fax, :string
  end
end
