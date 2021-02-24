require 'rails_helper'

RSpec.describe Work, type: :model do
  before do
    @user_a = FactoryBot.create(:user)
  end
  describe 'バリデーションのテスト' do
    # contentがなければ無効な状態であること
    context '本文が空の場合' do
      it 'is invalid without a content' do
        work = Work.new(
          title: 'テスト1',
          content: nil,
          status: false,
          user: @user_a
        )
        work.valid?
        expect(work.errors[:content]).to include("を入力してください")
      end
    end
    # titleが100文字以上は無効な状態であること
    context 'タイトルが100文字以上の場合' do
      it 'is invalid if the title is more than 100 characters' do
        work = Work.new(
          title: 'Rubyの初心者【ルビイスト】が異世界でプログラマになり無双する　～交通事故からの異世界に転生、かくかくしかじかあった挙げ句にSランクパーティから追放されたけれど、冒険者ギルドのシステムをDXして、冒険者達を影からこっそりサポートしてしまう～',
          content: 'テストの本文です。',
          status: false,
          user: @user_a
        )
        work.valid?
        expect(work.errors[:title]).to include('は100文字以内で入力してください')
      end
    end
    # タイトルと本文があれば有効な状態であること
    context '作品のタイトルと本文に内容が記載されている場合' do
      it 'is valid with a title, content' do
        work = Work.new(
          title: 'テスト名サンプル',
          content: 'テストの内容サンプル',
          status: false,
          user: @user_a
        )
        work.valid?
        expect(work).to be_valid
      end
    end
  end
end
