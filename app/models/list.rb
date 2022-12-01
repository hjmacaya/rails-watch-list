class List < ApplicationRecord
  # Validations
  validates :name, uniqueness: true, presence: true

  # Asociations
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
end
