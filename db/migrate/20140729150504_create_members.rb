class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.string :gender
      t.string :birth_month
      t.string :birth_day
      t.string :phone_home
      t.string :phone_work
      t.string :phone_mobile
      t.string :phone_fax
      t.string :email_personal
      t.string :email_alternate

      t.datetime :signup_date
      t.boolean :enabled

      t.timestamps
    end
  end
end
