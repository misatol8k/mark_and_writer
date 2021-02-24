require 'rails_helper'
RSpec.describe '作品管理機能', type: :system do
  before do
    @user_a = FactoryBot.create(:user)
    @user_b = FactoryBot.create(:second_user)
    @user_c = FactoryBot.create(:third_user)
    @work = FactoryBot.create(:work, user: @user_a)
    FactoryBot.create(:second_work, user: @user_b)
    FactoryBot.create(:third_work, user: @user_c)
    visit works_path
  end
  describe '一覧表示機能' do
    before do
      visit works_path
    end
    context '一覧画面に遷移した場合' do
      it '作成済みの作品一覧が表示される' do
        expect(page).to have_content 'テスト1'
        expect(page).to have_content 'テスト2'
        expect(page).to have_content 'テスト3'
      end
    end
  end
  describe '検索機能' do
    before do
      visit works_path
    end
    context 'タイトルであいまい検索をした場合' do
      it "検索キーワードを含む作品で絞り込まれる" do
        fill_in 'タイトル', with: 'スト1'
        click_button 'Search'
        expect(page).to have_content 'テスト1'
        expect(page).not_to have_content 'テスト2'
        expect(page).not_to have_content 'テスト3'
      end
    end
  end
  describe '詳細表示機能' do
    context '任意の作品詳細画面に遷移した場合' do
      before do
        visit work_path(@work.id)
      end
      it '該当作品の内容が表示される' do
        expect(page).to have_content 'テスト1の本文です。或曇つた冬の日暮である。私は横須賀発上り二等客車の隅に腰を下して、ぼんやり発車の笛を待つてゐた。とうに電燈のついた客車の中には、珍らしく私の外に一人も乗客はゐなかつた。'
      end
    end
  end
  describe '新規作成機能' do
    before do
      visit new_user_session_path
      fill_in 'メールアドレス', with: 'test2@test.com'
      fill_in 'パスワード', with: 'password'
      click_button 'ログイン'
    end
    context '作品を新規作成した場合' do
      before do
        click_on '作品投稿'
        fill_in 'タイトル', with: 'テストを書く'
        fill_in '本文', with: 'RSpecでテストを書く'
        click_on '登録する'
      end
      it '作成した作品が表示される' do
        expect(page).to have_content 'RSpecでテストを書く'
      end
    end
    describe '編集機能' do
      context '作品を編集した場合' do
        before do
          click_on '作品一覧'
          sleep 2
          all('tbody tr')[1].click_link 'Show'
          click_on 'Edit'
          fill_in '本文', with: '作品2を編集しました'
          click_on '更新する'
        end
        it "編集した内容が表示される" do
          expect(page).to have_content '作品2を編集しました'
        end
      end
    end
  end
end
