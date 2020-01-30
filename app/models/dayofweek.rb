class Dayofweek < ApplicationRecord
  belongs_to :guide, optional: true
end
