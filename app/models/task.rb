class Task < ApplicationRecord
  validates :chapter, {presence: true}
  validates :keyword, {presence: true}
  has_one :done, dependent: :destroy
end
