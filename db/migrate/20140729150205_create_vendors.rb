class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :description
      t.datetime :subscription_date
      t.datetime :signup_date
      t.boolean :enabled
      t.boolean :paid

      t.timestamps
    end
  end
end
