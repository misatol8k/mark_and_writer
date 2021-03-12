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
  has_many :impressions, dependent: :destroy
  has_many :reactions, dependent: :destroy
  has_many :stickers, through: :reactions
  has_many :reaction_users, through: :reactions, source: :user
end

# == Schema Information
#
# Table name: works
#
#  id         :bigint           not null, primary key
#  content    :text             not null
#  status     :boolean          default(FALSE)
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint
#
# Indexes
#
#  index_works_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
