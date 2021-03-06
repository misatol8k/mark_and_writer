class Sticker < ApplicationRecord
  has_many :reactions, dependent: :destroy
  validates :name, presence: true, length: { maximum: 100 }
  mount_uploader :image, ImageUploader
end
