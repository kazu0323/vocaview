class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

     has_many :reviews
     with_options presence: true do
      validates :email
      validates :password,format: { with: /(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{6,}/, message: "は、半角英数字混合での入力が必須" },on: :create
        end
end
