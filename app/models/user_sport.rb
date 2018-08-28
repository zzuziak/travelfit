class UserSport < ApplicationRecord
  belongs_to :user
  belongs_to :sport

  LEVELS = ["Beginner", "Confirmed", "Ninja"]

  validates :level, inclusion: {in: LEVELS}
end
