class AddAcceptedToMember < ActiveRecord::Migration
  def change
    add_column :members, :accepted, :boolean
  end
end
