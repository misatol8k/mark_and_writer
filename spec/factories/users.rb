# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  current_sign_in_at     :datetime
#  current_sign_in_ip     :inet
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  image                  :text
#  last_sign_in_at        :datetime
#  last_sign_in_ip        :inet
#  name                   :string           not null
#  profile                :text
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  sign_in_count          :integer          default(0), not null
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
FactoryBot.define do
  factory :user do
    name { 'user_admin' }
    email { 'test1@test.com' }
    password { 'password' }
    profile { 'My name is xxx. My favorite books are ... ' }
    image  { nil }
    # admin { true }
  end
  factory :second_user, class: User do
    name { 'user_b' }
    email { 'test2@test.com' }
    password { 'password' }
    profile { 'My name is xxx. My favorite books are ... ' }
    image  { nil }
    # admin { false }
  end
  factory :third_user, class: User do
    name { 'user_c' }
    email { 'test3@test.com' }
    password { 'password' }
    profile { 'My name is xxx. My favorite books are ... ' }
    image { nil }
    # admin { false }
  end
end
