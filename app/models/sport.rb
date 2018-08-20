class Sport < ApplicationRecord
  has_many :events
  has_many :user_sports

  CATEGORIES = ["local adventure", "teamsports", "running", "fitness", "yoga", "racket sports"]

  validates :category, presence: true, uniqueness: true, inclusion: {in: CATEGORIES}
end
