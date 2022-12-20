class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :badges
  has_many :user_responses
  has_many :teacher_comments, foreign_key: :teacher_id
  has_many :teacher_comments, foreign_key: :student_id
  belongs_to :classroom

  before_create :validate_access_code

  def validate_access_code

  end
end
