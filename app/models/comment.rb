class Comment < ApplicationRecord
  belongs_to :menu
  belongs_to :user

  validates :content, presence: true
end
