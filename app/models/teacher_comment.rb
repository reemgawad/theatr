class TeacherComment < ApplicationRecord
  belongs_to :user_response
  belongs_to :teacher, class_name: 'User', foreign_key: :teacher_id

  validates :text, length: { minimum: 1 }
end
