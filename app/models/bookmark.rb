class Bookmark < ApplicationRecord
  # Validations
  validates :comment, presence: true, length: { minimum: 6 }
  validates_uniqueness_of :movie_id, :scope => [:list_id]

  # Asociations
  belongs_to :movie
  belongs_to :list
end
