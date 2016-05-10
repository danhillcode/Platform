class CreateLectureStudents < ActiveRecord::Migration
  def change
    create_table :lecture_students do |t|
      t.integer :lecture_id
      t.integer :student_id

      t.timestamps null: false
    end
  end
end
