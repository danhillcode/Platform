# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

	


   	User.all << Student.create(email: "inda@google.com", first_name: "Inda", second_name: "Mountains", qualifications: "Degree", english_level: "B3", location: "Jeddah", password: "87654321", password_confirmation: "87654321", age: 22, gender: "Female", nationality: "Spanish")
   	
   	User.all << Teacher.create(email: "dan@google.com", first_name: "Dan", second_name: "Hill", qualifications: "Degree", english_level: "Native", location: "Manchester", password: "87654321", password_confirmation: "87654321", age: 26, gender: "Male", nationality: "British")
    