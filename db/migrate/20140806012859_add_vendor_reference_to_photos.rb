class AddVendorReferenceToPhotos < ActiveRecord::Migration
  def change
    add_reference :photos, :vendor, index: true
  end
end
