class Drink < ApplicationRecord
  has_many :orders
  has_many :users, through: :orders

  validates :name, uniqueness: true 

  validate :can_not_be_my_name

  def can_not_be_my_name
    if self.name && self.name == 'Greg'
      self.errors.add(:name, "Said you can not be me") 
    end  
  end 
end
