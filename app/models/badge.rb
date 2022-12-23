class Badge < ApplicationRecord
  validates :user, uniqueness: { scope: :activity }
  belongs_to :user
  belongs_to :activity

  enum status: {
    available: 0,
    started: 1,
    marked: 2,
    completed: 3
  }
end
