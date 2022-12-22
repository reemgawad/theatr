class Badge < ApplicationRecord
  validates :user, uniqueness: { scope: :activity }
  belongs_to :user
  belongs_to :activity
  has_one :classroom, through: :user

  has_and_belongs_to_many :classroom, through: :user

  enum status: {
    unavailable: 0,
    available: 1,
    started: 2,
    marked: 3,
    completed: 4
  }
end
