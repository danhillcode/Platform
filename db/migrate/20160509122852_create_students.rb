class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :fullName
      t.string :email
      t.string :englishLevel
      t.string :location
      t.string :password
      t.integer :age
      t.string :gender
      t.string :nationality

      t.timestamps null: false
    end
  end
end
