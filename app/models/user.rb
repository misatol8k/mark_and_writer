class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :works, dependent: :destroy
  validates :name, presence: true, length: { maximum: 100 }
  validates :profile, length: { maximum: 1000 }
  mount_uploader :image, ImageUploader
end
