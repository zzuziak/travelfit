class Post < ApplicationRecord
  belongs_to :user
  belongs_to :event

  has_many :replies, dependent: :destroy

  validates :content, presence: true

end
