class CreateVendorTags < ActiveRecord::Migration
  def change
    create_table :vendor_tags do |t|
      t.belongs_to :vendor
      t.belongs_to :tag

      t.timestamps
    end
  end
end
