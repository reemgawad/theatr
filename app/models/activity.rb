class Activity < ApplicationRecord
  has_many :activity_questions
  has_many :badges
  validates_length_of :activity_questions, maximum: :question_amount
end
