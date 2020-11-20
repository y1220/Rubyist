class Part < ApplicationRecord
  has_many :chapters, dependent: :destroy
  has_many :pages, through: :chapters, dependent: :destroy
  # attr_accessor :name
  # def initialize(name)
  #   @name = name
  # end
end
