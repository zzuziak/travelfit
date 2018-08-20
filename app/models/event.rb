class Event < ApplicationRecord
  belongs_to :user
  belongs_to :sport

  has_many :participations
  has_many :posts
  has_many :replies, through: :posts
  has_many :users, through: :participations

  validates :title, presence: true
  validates :date, presence: true
  validates :location, presence: true
  validates :description, presence: true

end
