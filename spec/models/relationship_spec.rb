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
