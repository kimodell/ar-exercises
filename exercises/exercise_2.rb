require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

@store1 = Store.find_by(id: 1)
@store2 = Store.find_by(id: 2)

puts @store1.inspect
puts @store2.inspect


if @store1
  @store1.update(name: 'Calgary')
end  

puts @store1.inspect
