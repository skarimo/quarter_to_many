class QuarterOwner < ApplicationRecord
  belongs_to :user
  belongs_to :quarter
end
