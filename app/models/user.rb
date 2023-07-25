class User < ApplicationRecord
  has_many :menus

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :comments
  validates :name, :profile, :occupation, :position, presence: true

  # attribute :name, :string
  # attr_accessor :name
  # attribute :profile, :string
  # attr_accessor :profile
  # attribute :occupation, :string
  # attr_accessor :occupation
  # attribute :position, :string
  # attr_accessor :position
end
