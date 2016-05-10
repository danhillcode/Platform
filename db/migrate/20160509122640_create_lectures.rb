class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.string :topic
      t.datetime :time
      t.string :hangoutId
      t.integer :studentAmount

      t.timestamps null: false
    end
  end
end
