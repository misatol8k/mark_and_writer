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
require 'rails_helper'

RSpec.describe Sticker, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
