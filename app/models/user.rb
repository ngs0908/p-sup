class User < ApplicationRecord
  has_many :menus

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :comments
  validates :name, :profile, :age, :gender, presence: true

end
