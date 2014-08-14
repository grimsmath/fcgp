class RemoveExtraEmailFromMember < ActiveRecord::Migration
  def change
    remove_column :members, :email_personal
    remove_column :members, :email_alternate
  end
end
