FactoryBot.define do
  factory :user do
    name { "user_admin" }
    email { "test1@test.com" }
    password { "password" }
    profile { "My name is xxx. My favorite books are ... " }
    image  { nil }
    # admin { true }
  end
  factory :second_user, class: User do
    name { "user_b" }
    email { "test2@test.com" }
    password { "password" }
    profile { "My name is xxx. My favorite books are ... " }
    image  { nil }
    # admin { false }
  end
  factory :third_user, class: User do
    name { "user_c" }
    email { "test3@test.com" }
    password { "password" }
    profile { "My name is xxx. My favorite books are ... " }
    image  { nil }
    # admin { false }
  end
end
