class Car < ApplicationRecord
  belongs_to :user
  has_many :rentals, dependent: :destroy

  include PgSearch::Model
  pg_search_scope :search_by_model_and_description,
    against: [ :model, :description ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
