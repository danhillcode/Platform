class AddTeacherToLectures < ActiveRecord::Migration
  def change
    add_reference :lectures, :teacher, index: true, foreign_key: true
  end
end
