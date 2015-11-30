class AddQpassengersToServices < ActiveRecord::Migration
  def change
    add_column :services, :qPassengers, :integer
  end
end
