class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      ## Member Profile
      t.string :first_name
      t.string :last_name
      t.string :middle_initial
      t.string :gender
      t.string :birth_month
      t.string :birth_day
      t.string :phone_home
      t.string :phone_work
      t.string :phone_mobile
      t.string :phone_fax
      t.string :email_personal
      t.string :email_alternate
      t.belongs_to :signup
      t.datetime :signup_date
      t.boolean :enabled, default: true

      t.timestamps
    end
  end
end
