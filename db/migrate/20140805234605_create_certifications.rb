class CreateCertifications < ActiveRecord::Migration
  def change
    create_table :certifications do |t|
      t.string :title
      t.string :awarded
      t.text :notes
      t.belongs_to :vendor

      t.timestamps
    end
  end
end
