class Box < ApplicationRecord
  belongs_to :page
  #belongs_to :chapter
  has_many :contents, dependent: :destroy
end
