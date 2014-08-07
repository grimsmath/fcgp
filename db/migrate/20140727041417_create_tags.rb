class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :title
      t.string :name
      t.boolean :enabled

      t.timestamps
    end
  end
end
