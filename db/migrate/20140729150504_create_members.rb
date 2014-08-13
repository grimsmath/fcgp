class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Roles for Pundit
      t.boolean :admin,       default: false
      t.boolean :moderator,   default: false

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at

      t.belongs_to :vendor

      add_index :members, :email,                unique: true
      add_index :members, :reset_password_token, unique: true
      # add_index :users, :confirmation_token,   unique: true
      # add_index :users, :unlock_token,         unique: true

      ## Member Profile
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
