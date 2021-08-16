class AddPriceToClowns < ActiveRecord::Migration[6.0]
  def change
    add_column :clowns, :price, :integer
  end
end
