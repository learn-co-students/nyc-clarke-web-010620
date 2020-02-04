class Order < ApplicationRecord
  belongs_to :user
  belongs_to :drink

  validates :price, numericality: {greater_than: 0, less_than_or_equal_to: 25, }
  validates :size, presence: true
  validates :size, inclusion: {in: %w(small medium large)}

  
end
