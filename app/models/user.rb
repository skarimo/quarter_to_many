class User < ApplicationRecord
  has_many :quarter_owners
  has_many :quarters, through: :quarter_owners
  validates :name, uniqueness: true
  validates :age, numericality: { greater_than: 17}

end
