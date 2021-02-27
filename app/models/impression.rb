class Impression < ApplicationRecord
  belongs_to :work
  validates :comment, presence: true
end
