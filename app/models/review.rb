class Review < ApplicationRecord
  belongs_to :tourist, optional: true
  belongs_to :guide, optional: true
end
