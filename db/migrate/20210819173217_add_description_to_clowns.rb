class AddDescriptionToClowns < ActiveRecord::Migration[6.0]
  def change
    add_column :clowns, :description, :text
  end
end
