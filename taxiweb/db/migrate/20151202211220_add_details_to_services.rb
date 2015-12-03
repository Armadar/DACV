class AddDetailsToServices < ActiveRecord::Migration
  def change
    add_column :services, :confirmed, :boolean
    add_column :services, :amount, :decimal
    add_column :services, :favorite, :boolean
  end
end
