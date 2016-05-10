class Student < User

  has_many :lecture_student
  has_many :lectures, through: :lecture_student 
end
