class Teacher < User
has_many :lectures 
 validates_presence_of :time

end
