class Activity < ApplicationRecord
  has_many :activity_questions
  has_many :badges
  validates_length_of :activity_questions, maximum: :question_amount

  # include PgSearch::Model
  # pg_search_scope :search_by_title_and_type,
  #   against: [ :title, :activity_type ],
  #   using: {
  #     tsearch: { prefix: true }
  #   }
end
