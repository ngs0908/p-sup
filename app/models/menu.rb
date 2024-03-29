class Menu < ApplicationRecord
  has_one_attached :image

  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :calorie, presence: true
  validates :nutrient, presence: true
  validate :validate_image_presence

  private

  def validate_image_presence
    return if image.attached?

    errors.add(:image, 'must be attached')
  end
end
