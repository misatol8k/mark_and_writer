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
FactoryBot.define do
  factory :sticker do
    name { "MyString" }
    image { "MyText" }
  end
end
