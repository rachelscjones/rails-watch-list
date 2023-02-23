class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length:
    { minimum: 6, too_short: "6 characters is the minimum allowed" }

  validates :movie, uniqueness: { scope: :list }
end
