class CreateDynamicRouters < ActiveRecord::Migration
  def change
    create_table :dynamic_routers do |t|

      t.timestamps
    end
  end
end
