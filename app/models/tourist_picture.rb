class TouristPicture < ApplicationRecord
  belongs_to :tourist
  attachment :picture
end
