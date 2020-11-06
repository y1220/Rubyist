class Image < ApplicationRecord
  belongs_to :box
  mount_uploader :pic, FileUploader
end
