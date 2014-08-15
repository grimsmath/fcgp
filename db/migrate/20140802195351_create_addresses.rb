class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street1
      t.string :street2
      t.string :city
      t.string :state
      t.string :postal_code
      t.belongs_to :member
      t.belongs_to :vendor

      t.timestamps
    end
  end
end
