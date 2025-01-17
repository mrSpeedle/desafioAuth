class User < ApplicationRecord
  has_many :posts
  has_many :comments
  enum :role, [:normal_user, :author, :admin]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
