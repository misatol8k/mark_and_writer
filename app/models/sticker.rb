class Sticker < ApplicationRecord
  has_many :reactions, dependent: :destroy
  validates :name, presence: true, length: { maximum: 100 }
  mount_uploader :image, ImageUploader
end

# == Schema Information
#
# Table name: stickers
#
#  id         :bigint           not null, primary key
#  image      :text
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
