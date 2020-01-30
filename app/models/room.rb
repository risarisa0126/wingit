class Room < ApplicationRecord
  has_many :messages, foreign_key: :room_id, dependent: :destroy
  belongs_to :tourist, optional: true
  belongs_to :guide, optional: true
end
