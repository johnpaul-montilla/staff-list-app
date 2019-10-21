# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# ruby encoding: utf-8
employee_list = [
  [ "Admin Name", "admin@email.com", "Admin", "password", "password"],
  [ "John Doe", "johndoe@email.com", "Employee", "password", "password"],
  [ "Jane Doe", "janedoe@email.com", "Employee", "password", "password"],
  [ "Jonathan Doe", "jonathandoe@email.com", "Employee", "password", "password"]
]

employee_list.each do |name, email, role, password, password_confirmation|
  Employee.create(name: name, email: email, role: role, password: password, password_confirmation: password_confirmation)
end
