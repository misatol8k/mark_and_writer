require 'rails_helper'
RSpec.describe 'フォロー機能', type: :system do
  before do
    # @user_admin = FactoryBot.create(:user)
    @user_b = FactoryBot.create(:second_user)
    @user_c = FactoryBot.create(:third_user)
    # FactoryBot.create(:work, user: @user_admin)
    FactoryBot.create(:second_work, user: @user_b)
    FactoryBot.create(:third_work, user: @user_c)
    visit works_path
  end
  describe 'フォロー機能のテスト' do
    before do
      visit new_user_session_path
      fill_in 'メールアドレス', with: 'test2@test.com'
      fill_in 'パスワード', with: 'password'
      click_button 'ログイン'
      click_on '作品一覧'
      click_on "#{@user_c.name}"
    end
    context 'ユーザがフォローボタンを押したとき' do
      before do
        click_on 'フォロー'
        visit current_path
      end
      it 'フォローした状態になること' do
        expect(page).to have_button 'フォロー解除'
      end
    end
  end
end
