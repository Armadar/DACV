class AddTipoVehiculoToServices < ActiveRecord::Migration
  def change
    add_column :services, :tipoVehiculo, :string
  end
end
