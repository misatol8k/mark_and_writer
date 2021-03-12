# == Schema Information
#
# Table name: works
#
#  id         :bigint           not null, primary key
#  content    :text             not null
#  status     :boolean          default(FALSE)
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint
#
# Indexes
#
#  index_works_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
FactoryBot.define do
  factory :work do
    title { 'テスト1' }
    content { 'テスト1の本文です。或曇つた冬の日暮である。私は横須賀発上り二等客車の隅に腰を下して、ぼんやり発車の笛を待つてゐた。とうに電燈のついた客車の中には、珍らしく私の外に一人も乗客はゐなかつた。' }
    status { false }
    association :user
    # after(:create) do |work|
    #   create(:labeling, work: work, label: create(:label))
    #   create(:labeling, work: work, label: create(:second_label))
    # end
  end
  factory :second_work, class: Work do
    title { 'テスト2' }
    content { 'テスト2の本文です。暮色を帯びた町はずれの踏切りと、小鳥のように声を挙げた三人の子供たちと、そうしてその上に乱落らんらくする鮮あざやかな蜜柑の色と――すべては汽車の窓の外に、瞬またたく暇もなく通り過ぎた。' }
    status { false }
    association :user
    # after(:create) do |work|
    #   create(:labeling, work: work, label: Label.second)
    #   create(:labeling, work: work, label: create(:third_label))
    # end
  end
  factory :third_work, class: Work do
    title { 'テスト3' }
    content { 'テスト3の本文です。私はこの時始めて、云いようのない疲労と倦怠とを、そうして又不可解な、下等な、退屈な人生を僅わずかに忘れる事が出来たのである。' }
    status { false }
    association :user
    # after(:create) do |work|
    #   create(:labeling, work: work, label: Label.last)
    # end
  end
end
