class Classroom < ApplicationRecord
  has_many :users
  has_many :badges, through: :users
end
