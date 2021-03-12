class Impression < ApplicationRecord
  belongs_to :work
  validates :comment, presence: true
end

# == Schema Information
#
# Table name: impressions
#
#  id         :bigint           not null, primary key
#  comment    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  work_id    :bigint
#
# Indexes
#
#  index_impressions_on_work_id  (work_id)
#
# Foreign Keys
#
#  fk_rails_...  (work_id => works.id)
#
