class TouristPicture < ApplicationRecord
  belongs_to :tourist, optional: true
  attachment :picture
end
