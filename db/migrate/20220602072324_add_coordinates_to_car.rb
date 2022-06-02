class AddCoordinatesToCar < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :latitute, :float
    add_column :cars, :longitude, :float
  end
end
