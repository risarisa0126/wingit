class GuidePicture < ApplicationRecord
  belongs_to :guide
  attachment :guide_no_picture
end
