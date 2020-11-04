class Task < ApplicationRecord
  validates :chapter, {presence: true}
  validates :keyword, {presence: true}

end
