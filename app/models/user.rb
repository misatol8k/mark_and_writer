class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # :trackableのみ絡む追加済み、使用時に追加する
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :image, ImageUploader
  validates :name, presence: true
  validates :profile, length: { maximum: 1000 }
end
