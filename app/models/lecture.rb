class Lecture < ActiveRecord::Base
  


  has_many :lecture_student, :dependent => :destroy
  has_many :students, through: :lecture_student
  belongs_to :teacher
  validates_presence_of :teacher

end
