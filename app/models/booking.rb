class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :clown

  validates :start_date, :end_date, presence: true

  def accept!
    self.accepted = true
  end

  def reject!
    self.accepted = false
  end
end
