class RenameLatituteToLatitude < ActiveRecord::Migration[6.1]
  def change
    rename_column :cars, :latitute, :latitude
  end
end
