# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

	


   	User.all << Student.create(email: "amy@google.com", first_name: "Amy", second_name: "Felix", qualifications: "High school junior", english_level: "B3", location: "Jeddah", password: "87654321", password_confirmation: "87654321", age: 22, gender: "Female", nationality: "Spanish")
   	User.all << Student.create(email: "martha@google.com", first_name: "Martha", second_name: "Montana", qualifications: "Degree", english_level: "B3", location: "Jeddah", password: "87654321", password_confirmation: "87654321", age: 22, gender: "Female", nationality: "Italian")
   	User.all << Student.create(email: "kim@google.com", first_name: "Kim", second_name: "Cameron", qualifications: "High school senior", english_level: "B3", location: "Jeddah", password: "87654321", password_confirmation: "87654321", age: 22, gender: "Female", nationality: "Catalan")
   	User.all << Student.create(email: "bob@google.com", first_name: "Bob", second_name: "Smith", qualifications: "High school junior", english_level: "B3", location: "Jeddah", password: "87654321", password_confirmation: "87654321", age: 22, gender: "Female", nationality: "Polish")
   	User.all << Student.create(email: "simon@google.com", first_name: "Simon", second_name: "Wingate", qualifications: "High school senior", english_level: "B3", location: "Jeddah", password: "87654321", password_confirmation: "87654321", age: 22, gender: "Female", nationality: "Saudi")
   	
   	User.all << Teacher.create(email: "dan@google.com", first_name: "Dan", second_name: "Hill", qualifications: "Degree", english_level: "Native", location: "Manchester", password: "87654321", password_confirmation: "87654321", age: 26, gender: "Male", nationality: "British")
   	User.all << Teacher.create(email: "matias@google.com", first_name: "Matias", second_name: "Fubanachi", qualifications: "Masters Degree", english_level: "Native", location: "Barcelona", password: "87654321", password_confirmation: "87654321", age: 34, gender: "Male", nationality: "American")
   	User.all << Teacher.create(email: "charlie@google.com", first_name: "Charlie", second_name: "Serano", qualifications: "Degree", english_level: "Native", location: "Manchester", password: "87654321", password_confirmation: "87654321", age: 37, gender: "Male", nationality: "British")
   	User.all << Teacher.create(email: "alberto@google.com", first_name: "Alberto", second_name: "Fubanachi", qualifications: "High school", english_level: "Native", location: "Barcelona", password: "87654321", password_confirmation: "87654321", age: 29, gender: "Male", nationality: "Canadian")
   	User.all << Teacher.create(email: "mark@google.com", first_name: "Mark", second_name: "Hamil", qualifications: "Degree", english_level: "Native", location: "Barcelona", password: "87654321", password_confirmation: "87654321", age: 23, gender: "Male", nationality: "American")
    