class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.boolean :enabled
      t.belongs_to :vendor
      t.timestamps
    end
  end
end
