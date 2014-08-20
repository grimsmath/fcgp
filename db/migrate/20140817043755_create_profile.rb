class CreateProfile < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :middle_initial
      t.string :last_name
      t.string :gender
      t.string :birth_month
      t.string :birth_day
      t.string :phone
      t.belongs_to :member

      t.timestamps
    end
  end
end
