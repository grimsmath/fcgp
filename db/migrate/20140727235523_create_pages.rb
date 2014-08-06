class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name, null: false, unique: true
      t.string :title, null: false
      t.string :sub_title
      t.text :description
      t.text :body
      t.belongs_to :user
      t.references :parent
      t.string :ancestry
      t.boolean :enabled

      t.timestamps

      t.index :id
      t.index :ancestry
    end
  end
end
