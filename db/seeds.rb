# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'securerandom'

# Faker::Config.locale = :ja

User.create!(name: 'test',
             email: 'test@test.com',
             password: 'password')

20.times do |n|
  user_name = "ユーザー名#{n + 1}"
  email = SecureRandom.hex(5)
  User.create!(name: user_name,
               email: "#{email}@test.com",
               password: 'password')
  user_id = User.last.id
  title = "作品名#{n + 1}"
  content = "#{n + 1}件目の作品の内容です。作品の内容です。作品の内容です。作品の内容です。作品の内容です。作品の内容です。"
  Work.create!(title: title,
               content: content,
               user_id: user_id)
  user_id = User.first.id
  title = "作品名#{n + 1}"
  content = "#{n + 1}件目の作品の内容です。作品の内容です。作品の内容です。作品の内容です。作品の内容です。作品の内容です。"
  Work.create!(title: title,
               content: content,
               user_id: user_id)
end
