require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Gandalf", last_name: "The Grey", hourly_rate: 60)
@store1.employees.create(first_name: "Bilbo", last_name: "Baggins", hourly_rate: 100)
@store1.employees.create(first_name: "Frodo", last_name: "Baggins", hourly_rate: 60)
@store1.employees.create(first_name: "Samwise", last_name: "Gamgee", hourly_rate: 40)


@store2.employees.create(first_name: "Jean Luc", last_name: "Picard", hourly_rate: 150)
@store2.employees.create(first_name: "William", last_name: "Riker", hourly_rate: 90)
@store2.employees.create(first_name: "Beverly", last_name: "Crusher", hourly_rate: 95)
@store2.employees.create(first_name: "Deanna", last_name: "Troi", hourly_rate: 70)
@store2.employees.create(first_name: "Jordi", last_name: "LaForge", hourly_rate: 80)

@employees = Employee.all

@employees.each do |employee|
  puts "#{employee.first_name}, #{employee.last_name}"
end