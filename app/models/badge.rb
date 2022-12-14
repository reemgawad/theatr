class Badge < ApplicationRecord
  belongs_to :user
  belongs_to :activity

  enum status: {
    unavailable: 0,
    available: 1,
    started: 2,
    marked: 3,
    completed: 4
  }
end
