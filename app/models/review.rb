class Review < ApplicationRecord
  belongs_to :tourist
  belongs_to :guide
end
