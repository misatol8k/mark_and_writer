# == Schema Information
#
# Table name: relationships
#
#  id          :bigint           not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  followed_id :integer
#  follower_id :integer
#
# Indexes
#
#  index_relationships_on_followed_id                  (followed_id)
#  index_relationships_on_follower_id                  (follower_id)
#  index_relationships_on_follower_id_and_followed_id  (follower_id,followed_id) UNIQUE
#
require 'rails_helper'

RSpec.describe Relationship, type: :model do
  before do
    @user_a = FactoryBot.create(:user)
    @user_b = FactoryBot.create(:second_user)
  end
  describe 'バリデーションのテスト' do
    # タイトルと本文があれば有効な状態であること
    context 'フォロー・フォロワーidが設定されている場合' do
      it 'is valid with a follower_id, followed_id' do
        relationship = Relationship.new(
          follower_id: @user_a.id,
          followed_id: @user_b.id,
          follower: @user_a,
          followed: @user_b
        )
        relationship.valid?
        expect(relationship).to be_valid
      end
    end
  end
end
