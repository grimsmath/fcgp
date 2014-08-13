class CreateMemberVendors < ActiveRecord::Migration
  def change
    create_table :member_vendors do |t|
      t.belongs_to :member
      t.belongs_to :signup

      t.timestamps
    end
  end
end
