class RemoveExtraEmailFromMember < ActiveRecord::Migration
  def change
    remove_column :members, :email_personal
    remove_column :members, :email_alternate
    remove_column :members, :vendor_id
  end
end
