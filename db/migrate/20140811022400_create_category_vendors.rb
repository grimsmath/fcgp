class CreateCategoryVendors < ActiveRecord::Migration
  def change
    create_table :category_vendors do |t|
      t.belongs_to :category
      t.belongs_to :vendor

      t.timestamps
    end
  end
end
