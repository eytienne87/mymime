class CreateClowns < ActiveRecord::Migration[6.0]
  def change
    create_table :clowns do |t|
      t.string :name
      t.integer :years_of_experience
      t.string :gender
      t.string :rental_duration

      t.timestamps
    end
  end
end
