class CreateCategoriesVendors < ActiveRecord::Migration
  def change
    create_table :categories_vendors, id: false do |t|
      t.belongs_to :vendor
      t.belongs_to :category

      t.timestamps
    end
  end
end
