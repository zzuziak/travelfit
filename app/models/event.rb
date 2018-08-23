class Event < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  mount_uploader :photo, PhotoUploader

  belongs_to :user
  belongs_to :sport

  has_many :participations, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :replies, through: :posts
  has_many :users, through: :participations

  INTENSITIES = [1, 2, 3, 4, 5]

  validates :intensity, presence: true, inclusion: {in: INTENSITIES}
  validates :title, presence: true
  validates :date, presence: true
  validates :address, presence: true
  validates :description, presence: true


  include PgSearch
  pg_search_scope :text_search,
  against: [ :title, :description, :location, :category ],
  using: {
    tsearch: { prefix: true }
  }

end
