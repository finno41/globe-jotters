class Post < ApplicationRecord
  belongs_to :user
  belongs_to :area
  has_one_attached :main_image, dependent: :destroy
end
