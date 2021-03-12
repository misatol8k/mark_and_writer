# == Schema Information
#
# Table name: reactions
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  sticker_id :bigint
#  user_id    :bigint
#  work_id    :bigint
#
# Indexes
#
#  index_reactions_on_sticker_id  (sticker_id)
#  index_reactions_on_user_id     (user_id)
#  index_reactions_on_work_id     (work_id)
#
# Foreign Keys
#
#  fk_rails_...  (sticker_id => stickers.id)
#  fk_rails_...  (user_id => users.id)
#  fk_rails_...  (work_id => works.id)
#
require 'rails_helper'

RSpec.describe Reaction, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
