class CreateBadges < ActiveRecord::Migration
  def change
    create_table :badges do |t|
      t.string :title
      t.string :awarded
      t.attachment :image
      t.belongs_to :vendor

      t.timestamps
    end
  end
end
