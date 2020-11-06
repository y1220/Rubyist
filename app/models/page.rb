class Page < ApplicationRecord
  belongs_to :chapter
  has_many :boxes, dependent: :destroy
  #has_many :contents, through: :boxes, dependent: :destroy
end
