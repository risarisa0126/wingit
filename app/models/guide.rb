class Guide < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         # :confirmable



  has_many :guide_pictures, dependent: :destroy
  has_many :guide_native_countries, dependent: :destroy
  has_many :guide_native_launguages, dependent: :destroy
  has_many :guide_practicing_launguages, dependent: :destroy
  has_many :able_to_guide_places, dependent: :destroy
  has_many :dayofweeks, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :rooms, dependent: :destroy
  attachment :guide_profile_image


  accepts_nested_attributes_for :guide_native_countries, allow_destroy: true
  accepts_nested_attributes_for :guide_native_launguages, allow_destroy: true
  accepts_nested_attributes_for :guide_practicing_launguages, allow_destroy: true
  accepts_nested_attributes_for :dayofweeks, allow_destroy: true
  accepts_nested_attributes_for :able_to_guide_places, allow_destroy: true


  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
  validates :guide_lastname, presence: true
  validates :guide_firstname, presence: true
  validates :guide_username, presence: true
  validates :guide_gender, presence: true
  validates :guide_age, presence: true
  validates :guide_profile_image, presence: true
  validates :guide_about_me, presence: true, length: { maximum: 1000 }
end
