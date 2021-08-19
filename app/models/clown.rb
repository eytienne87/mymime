class Clown < ApplicationRecord
  has_one_attached :photo

  belongs_to :user
  has_many :bookings

  # validates :name, :years_of_experience, :gender, :price presence: true
end
