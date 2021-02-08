class Review < ApplicationRecord
  belongs_to :user
  belongs_to :bansyaku
  validates :comment, presence: true
end
