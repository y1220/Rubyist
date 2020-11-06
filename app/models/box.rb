class Box < ApplicationRecord
  belongs_to :page
  #belongs_to :chapter
  has_many :contents, dependent: :destroy
  has_one :image, dependent: :destroy
end
