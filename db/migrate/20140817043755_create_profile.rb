class CreateProfile < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :middle_initial
      t.string :last_name
      t.string :gender
      t.string :birth_month
      t.string :birth_day
      t.string :phone_home
      t.string :phone_work
      t.string :phone_mobile
      t.string :phone_fax
      t.string :accepted
      t.boolean :enabled, default: true
      t.belongs_to :member

      t.timestamps
    end
  end
end
