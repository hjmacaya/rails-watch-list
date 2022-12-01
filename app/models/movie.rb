class Movie < ApplicationRecord
  # Validations
  validates :title, :overview, presence: true
  validates :title, uniqueness: true

  # Asociations
  has_many :bookmarks
end
