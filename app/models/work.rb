class Work < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    %w[title content created_at]
  end

  def self.ransackable_associations(auth_object = nil)
    []
  end
  validates :title, length: { maximum: 100 }
  validates :content, presence: true, length: { maximum: 10000 }
end
