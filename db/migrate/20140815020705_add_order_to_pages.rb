class AddOrderToPages < ActiveRecord::Migration
  def change
    add_column :pages, :order, :float
  end
end
