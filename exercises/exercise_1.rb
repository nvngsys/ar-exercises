require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
#TODO - Use Active Record's create class method multiple times to create 3 stores in the database:

store1 = Store.create(name: 'Burnaby', annual_revenue: 300000, mens_apparel: TRUE, womens_apparel: TRUE)
store2 = Store.create(name: 'Richmond', annual_revenue: 1260000, mens_apparel: FALSE, womens_apparel: TRUE)
store3 = Store.create(name: 'Gastown', annual_revenue: 190000, mens_apparel: TRUE, womens_apparel: FALSE)

puts "Row count Store: #{Store.count}"

