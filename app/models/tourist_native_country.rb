class TouristNativeCountry < ApplicationRecord
  belongs_to :tourist, optional: true
end
