class CreateVendorTags < ActiveRecord::Migration
  def change
    create_table :vendor_tags do |t|

      t.timestamps
    end
  end
end
