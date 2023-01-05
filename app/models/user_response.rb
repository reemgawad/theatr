class UserResponse < ApplicationRecord
  belongs_to :user
  belongs_to :activity_question
  has_many :teacher_comments

  validates :text, presence: true
end
