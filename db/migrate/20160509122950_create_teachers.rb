class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :fullName
      t.string :email
      t.string :qualifications
      t.string :location
      t.string :password
      t.integer :age
      t.string :gender
      t.string :nationality

      t.timestamps null: false
    end
  end
end
