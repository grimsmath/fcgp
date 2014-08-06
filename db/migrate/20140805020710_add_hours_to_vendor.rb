class AddHoursToVendor < ActiveRecord::Migration
  def change
    ## Opening times
    add_column :vendors, :mon_open, :string
    add_column :vendors, :tue_open, :string
    add_column :vendors, :wed_open, :string
    add_column :vendors, :thu_open, :string
    add_column :vendors, :fri_open, :string
    add_column :vendors, :sat_open, :string
    add_column :vendors, :sun_open, :string

    ## Closing times
    add_column :vendors, :mon_close, :string
    add_column :vendors, :tue_close, :string
    add_column :vendors, :wed_close, :string
    add_column :vendors, :thu_close, :string
    add_column :vendors, :fri_close, :string
    add_column :vendors, :sat_close, :string
    add_column :vendors, :sun_close, :string
  end
end
