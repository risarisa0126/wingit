class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  enum tourist_gender: { male:1, female:2, other:3}
  enum guide_gender: { 男:1, 女:2, その他:3}
end
