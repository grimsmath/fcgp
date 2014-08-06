class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.text :description
      t.attachment :image

      t.timestamps
    end
  end
end
