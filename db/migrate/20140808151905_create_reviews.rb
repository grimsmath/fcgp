class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :body
      t.boolean :enabled, default: true
      t.float :rating, default: 0.0
      t.belongs_to :vendor
      t.belongs_to :member

      t.timestamps
    end
  end
end
