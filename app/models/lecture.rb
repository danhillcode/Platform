class Lecture < ActiveRecord::Base

  has_many :lecture_student
  has_many :students, through: :lecture_student
belongs_to :teacher
end
