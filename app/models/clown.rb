class Clown < ApplicationRecord
  belongs_to :user
  has_many :bookings

  has_one_attached :photo
  # validates :name, :years_of_experience, :gender, :price presence: true
end
