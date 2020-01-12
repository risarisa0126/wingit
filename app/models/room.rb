class Room < ApplicationRecord
  has_many :messages
  belongs_to :tourist
  belongs_to :guide
end
