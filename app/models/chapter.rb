class Chapter < ApplicationRecord
  belongs_to :part
  has_many :pages, dependent: :destroy
  #has_many :boxes, through: :pages, dependent: :destroy
end
