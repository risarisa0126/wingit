class TouristSightseeingPlace < ApplicationRecord
  belongs_to :tourist, optional: true
end
