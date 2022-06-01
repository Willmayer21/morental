class AddTotalPriceToRentals < ActiveRecord::Migration[6.1]
  def change
    add_column :rentals, :total_price, :integer
  end
end
