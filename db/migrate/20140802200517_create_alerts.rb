class CreateAlerts < ActiveRecord::Migration
  def change
    create_table :alerts do |t|
      t.string :title
      t.text :message
      t.datetime :begins
      t.datetime :ends
      t.integer :type

      t.timestamps
    end
  end
end
