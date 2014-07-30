class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name, null: false, unique: true
      t.string :title, null: false
      t.string :sub_title
      t.text :description
      t.text :body
      t.integer :author_id
      t.boolean :enabled
      t.timestamps
    end
  end
end
