class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :type
      t.belongs_to :individual
      t.belongs_to :vendor
      t.belongs_to :address
      t.timestamps
    end
  end
end
