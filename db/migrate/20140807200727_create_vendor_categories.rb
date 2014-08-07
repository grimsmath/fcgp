class CreateVendorCategories < ActiveRecord::Migration
  def change
    create_table :vendor_categories do |t|
      t.belongs_to :vendor
      t.belongs_to :category

      t.timestamps
    end
  end
end
