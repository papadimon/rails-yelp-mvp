class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  CATEGORIES = %w[chinese italian japanese french belgian]

  # 1 - The category should only be one of those
  validates :category, inclusion: { in: CATEGORIES }
  # 2 - Name can not be blank
  validates :name, :address, presence: true
end
