class AddPayMethodToServices < ActiveRecord::Migration
  def change
    add_column :services, :payMethod, :string
  end
end
