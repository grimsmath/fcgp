class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :description
      t.attachment :logo
      t.string :subscription_date
      t.string :signup_date
      t.boolean :enabled
      t.boolean :paid
      t.belongs_to :member
      t.float :staff_rating, default: 0.0

      t.timestamps
    end
  end
end
