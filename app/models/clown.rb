class Clown < ApplicationRecord
  belongs_to :user

  validates :name, :years_of_experience, :gender, :rental_duration, presence: true
end
