class Sticker < ApplicationRecord
  has_many :reactions, dependent: :destroy
end
