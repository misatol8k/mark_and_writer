class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :work
end

# == Schema Information
#
# Table name: favorites
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  work_id    :integer
#
