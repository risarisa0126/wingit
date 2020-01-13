class Guide < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable



  has_many :guide_pictures
  has_many :guide_native_countries
  has_many :guide_native_launguages
  has_many :guide_practicing_launguages

  accepts_nested_attributes_for :guide_native_countries, allow_destroy: true
  accepts_nested_attributes_for :guide_native_launguages, allow_destroy: true
  accepts_nested_attributes_for :guide_practicing_launguages, allow_destroy: true

  has_many :able_to_guide_places
  has_many :favorites
  has_many :reviews
  has_many :rooms
  attachment :guide_profile_image


  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
  validates :guide_lastname, presence: true
  validates :guide_firstname, presence: true
  validates :guide_username, presence: true
  validates :guide_gender, presence: true
  validates :guide_age, presence: true
  validates :guide_profile_image, presence: true
  validates :guide_about_me, presence: true, length: { maximum: 300 }
  validates :daysofweek, presence: true

end
