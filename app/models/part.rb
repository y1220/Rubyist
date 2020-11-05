class Part < ApplicationRecord
  has_many :chapters, dependent: :destroy
  has_many :pages, through: :chapters, dependent: :destroy
end
