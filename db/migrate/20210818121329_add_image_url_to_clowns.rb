class AddImageUrlToClowns < ActiveRecord::Migration[6.0]
  def change
    add_column :clowns, :image_url, :string
  end
end
