class Sport < ApplicationRecord
  has_many :events
  has_many :user_sports

  CATEGORIES = ["Local adventure", "Teamsports", "Running", "Fitness", "Yoga", "Racket sports"]

  validates :category, presence: true, uniqueness: true, inclusion: {in: CATEGORIES}
end
