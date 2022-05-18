class Restaurant < ApplicationRecord
  FOOD = %w[chinese italian japanese french belgian].freeze
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: FOOD }
end
