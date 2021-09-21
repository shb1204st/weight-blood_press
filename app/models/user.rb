class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー ]+\z/, message: 'は全角の漢字もしくはひらがなもしくはカタカナで入力してください' }
  validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i, message: 'は半角英数字で入力してください' }

  has_many :time_contents
end
