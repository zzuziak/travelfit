class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  mount_uploader :photo, PhotoUploader

  has_many :events
  has_many :user_sports
  has_many :participations
  has_many :posts
  has_many :replies
  has_many :sports, through: :user_sports


end
