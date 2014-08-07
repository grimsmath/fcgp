class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title
      t.boolean :enabled
      t.references :parent
      t.string :ancestry

      t.timestamps

      t.index :id
      t.index :ancestry
    end
  end
end
