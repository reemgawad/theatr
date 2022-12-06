class Activity < ApplicationRecord
  has_many :activity_questions
  has_many :badges
end
