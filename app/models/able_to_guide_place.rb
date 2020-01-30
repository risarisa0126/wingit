class AbleToGuidePlace < ApplicationRecord
  belongs_to :guide, optional: true
end

