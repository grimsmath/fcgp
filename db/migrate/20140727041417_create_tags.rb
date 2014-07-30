class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.belongs_to :vendor
      t.boolean :enabled

      t.timestamps
    end
  end
end
