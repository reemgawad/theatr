class ActivityQuestion < ApplicationRecord
  belongs_to :activity
  has_many :user_responses
  validates_associated :activity
  has_many_attached :photos
end
