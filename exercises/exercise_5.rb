require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

# Output total annual revenue
puts Store.sum(:annual_revenue)
# Output average annual revenue
puts Store.average(:annual_revenue)

# Calculate and output the number of stores generating $1M or more in annual sales
puts Store.where("annual_revenue >= ?", 1000000).count