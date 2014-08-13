class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street1
      t.string :street2
      t.string :city
      t.string :state
      t.string :postal_code
      t.belongs_to :signup
      t.belongs_to :member

      t.timestamps
    end
  end
end
