require 'rails_helper'
RSpec.describe 'ユーザーログイン機能', type: :system do
  before do
    # @user_admin = FactoryBot.create(:user)
    @user_b = FactoryBot.create(:second_user)
    @user_c = FactoryBot.create(:third_user)
    # FactoryBot.create(:work, user: @user_admin)
    FactoryBot.create(:second_work, user: @user_b)
    FactoryBot.create(:third_work, user: @user_c)
    visit works_path
  end
  describe 'ユーザ登録のテスト' do
    before do
      visit new_user_registration_path
      fill_in 'メールアドレス', with: 'user_test@test.com'
      fill_in 'ユーザー名', with: 'user_test'
      fill_in 'パスワード', with: 'password'
      fill_in 'Password confirmation', with: 'password'
      click_on 'Sign up'
    end
    context 'ユーザがログインしていない状態のとき' do
      it 'ユーザの新規登録ができること' do
        expect(page).to have_content 'Welcome! You have signed up successfully.'
      end
    end
    describe 'プロフィール編集・削除機能' do
      context 'プロフィールを編集した場合' do
        it "編集した内容が反映される" do
          click_on 'プロフィール'
          click_on 'Edit'
          fill_in 'ユーザー名', with: 'user_test_edit'
          fill_in 'Current password', with: 'password'
          click_on 'Update'
          expect(page).to have_content 'Your account has been updated successfully.'
        end
      end
      context 'ユーザーを削除した場合' do
        it "ユーザーの作品が表示されなくなる" do
          click_on 'プロフィール'
          click_on 'Edit'
          fill_in 'Current password', with: 'password'
          page.accept_confirm do
            click_on 'Cancel my account'
          end
          expect(page).to have_content 'Bye! Your account has been successfully cancelled. We hope to see you again soon.'
        end
      end
    end
  end
  describe 'セッション機能のテスト' do
    before do
      visit new_user_session_path
      fill_in 'メールアドレス', with: 'test2@test.com'
      fill_in 'パスワード', with: 'password'
      click_button 'Log in'
    end
    context 'ユーザがログインしていないとき' do
      it 'ログインができること' do
        expect(page).to have_content 'Signed in successfully.'
      end
    end
    context 'ユーザがログインしたとき' do
      before do
        click_on 'プロフィール'
      end
      it '自分の詳細画面(マイページ)に飛べること' do
        expect(page).to have_content 'ユーザー詳細'
      end
    end
    context 'ユーザがログインしたとき' do
      it 'ログアウトができること' do
        click_on 'ログアウト'
        expect(current_path).to eq root_path
      end
    end
  end
end
