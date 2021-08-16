class RemoveRentalDurationFromClowns < ActiveRecord::Migration[6.0]
  def change
    remove_column :clowns, :rental_duration, :string
  end
end
