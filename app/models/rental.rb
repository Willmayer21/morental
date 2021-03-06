class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :car
  has_many :reviews
  validates :start_date, :end_date, presence: true
  # validates :start_date, comparison: { less_than: :end_date }
end
