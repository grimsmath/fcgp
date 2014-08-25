class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string  :street1
      t.string  :street2
      t.string  :city
      t.string  :state
      t.string  :postal_code
      t.references :locatable, polymorphic: true

      t.timestamps
    end
  end
end
