class Post < ApplicationRecord
  belongs_to :user
  belongs_to :area
  has_one_attached :main_image, dependent: :destroy
  has_many_attached :images, dependent: :destroy
  has_rich_text :description
  validates :title, :summary, :description, :category, :main_image, presence: true
end
