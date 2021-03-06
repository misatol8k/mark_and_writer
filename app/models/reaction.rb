class Reaction < ApplicationRecord
  belongs_to :work
  belongs_to :user
  belongs_to :sticker
end
