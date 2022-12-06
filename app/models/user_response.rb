class UserResponse < ApplicationRecord
  belongs_to :user
  belongs_to :activity_question
end
