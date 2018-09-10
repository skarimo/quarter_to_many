class Quarter < ApplicationRecord
  has_many :quarter_owners
  has_many :users, through: :quarter_owners
  validates :year, presence: true
  validates :degree_rust, presence: true
  validates :year, numericality: { greater_than: 1900 }
  validates :year, numericality: { greater_than: (Time.now.year - 5)}
  validates :degree_rust, numericality: { less_than: 70}
end
