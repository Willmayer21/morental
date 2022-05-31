class AddPosterUrlToCar < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :poster_url, :string
  end
end
