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
  pg_search_scope :search_address,
  against: [ :title, :description, :address ],
  using: {
    tsearch: { any_word: true }
  }

  def self.related_events
    sql = <<-SQL
        SELECT * FROM events
        JOIN sports
        ON events.sport_id = sports.id
        LIMIT 3
      SQL
    events = find_by_sql(sql)
  end

end
