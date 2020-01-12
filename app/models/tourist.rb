class Tourist < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  has_many :tourist_pictures
  has_many :tourist_native_countries
  has_many :tourist_native_launguages
  has_many :tourist_practicing_launguages
  has_many :tourist_sightseeing_places
  has_many :favorites
  has_many :reviews
  has_many :rooms
  attachment :tourist_profile_image

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
  validates :tourist_lastname, presence: true
  validates :tourist_firstname, presence: true
  validates :tourist_username, presence: true
  validates :tourist_gender, presence: true
  validates :tourist_age, presence: true
  validates :tourist_profile_image, presence: true
  validates :tourist_about_me, presence: true, length: { maximum: 300 }
  validates :fromdate, presence: true
  validates :todate, presence: true

end
