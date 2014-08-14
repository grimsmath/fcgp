class RemoveExtraEmailFromMember < ActiveRecord::Migration
  def change
    remove_column :member, :email_personal
    remove_column :member, :email_alternate
    remove_column :member, :vendor_id
  end
end
