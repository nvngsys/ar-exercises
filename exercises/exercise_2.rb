require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
#@store = find on stores where id = 1
@store1 = Store.find(1);
puts @store1
puts @store1.name

#@store = find on stores where id = 2
@store2 = Store.find(2);
puts @store2.name

#update @store1 - change name
@store1.name = 'Kamloops'
@store1.save