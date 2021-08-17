class Clown < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, :years_of_experience, :gender, :rental_duration, presence: true
end
