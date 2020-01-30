class GuidePicture < ApplicationRecord
  belongs_to :guide, optional: true
  attachment :guide_no_picture
end
