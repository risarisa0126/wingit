class TouristNativeLaunguage < ApplicationRecord
  belongs_to :tourist, optional: true
end
