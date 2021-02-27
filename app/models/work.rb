class Work < ApplicationRecord
  def self.ransackable_attributes(_auth_object = nil)
    %w[title content created_at]
  end

  def self.ransackable_associations(_auth_object = nil)
    []
  end

  validates :title, length: { maximum: 100 }
  validates :content, presence: true, length: { maximum: 10_000 }
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user
end
