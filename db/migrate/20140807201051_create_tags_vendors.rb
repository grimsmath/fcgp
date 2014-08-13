class CreateTagsVendors < ActiveRecord::Migration
  def change
    create_table :tags_vendors, id: false do |t|
      t.belongs_to :signup
      t.belongs_to :tag

      t.timestamps
    end
  end
end
