class Image < ApplicationRecord
  belongs_to :box
  #necessary to write, otherwise image can't be read correctly
  mount_uploader :pic, FileUploader
end
