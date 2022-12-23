class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :badges, dependent: :destroy
  has_many :user_responses
  has_many :teacher_comments, foreign_key: :teacher_id
  has_many :teacher_comments, foreign_key: :student_id
  belongs_to :classroom

  # validates :access_code, presence: true # RG: had to comment this out to run the seed

  before_validation :validate_access_code

  def validate_access_code
    if access_code == "placeholderTC"
      self.teacher = true
      generate_classroom
    else
      # Check if access code entered is found in Classroom
      # if yes, self.classroom = that classroom
      classroom = Classroom.find_by(access_code: self.access_code)
      self.classroom = classroom unless classroom.nil?
    end
  end

  def generate_classroom
    if self.teacher == true
      classroom = Classroom.create!(date: DateTime.new(2023, 2, 21, 11, 00))
      classroom.access_code = "class##{classroom.id}"
      classroom.save!
      self.classroom = classroom
    end
  end
end
