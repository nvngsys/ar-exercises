require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"
### Exercise 4: Loading a subset of stores
# 1. Borrowing and modifying the code from Exercise one, create 3 more stores:
#   * Surrey (annual_revenue of 224000, carries women's apparel only)
#   * Whistler (annual_revenue of 1900000 carries men's apparel only)
#   * Yaletown (annual_revenue of 430000 carries men's and women's apparel)
# 2. Using the `where` class method from Active Record, fetch (a collection of) only those stores that carry men's apparel. Assign the results to a variable `@mens_stores`.
# 3. Loop through each of these stores and output their name and annual revenue on each line.
# 4. Do another fetch but this time load stores that carry women's apparel and are generating less than $1M in annual revenue.

# Your code goes here ...

#Their are two verions here - found you could do each two ways
# .1
Store.where(mens_apparel: TRUE).each do |store|
    puts store.name + ' ' + store.annual_revenue.to_s
    #puts store.annual_revenue
end

#. 2
# this below works too
@test2 = Store.where(mens_apparel: TRUE)
@test2.each do |name|
        puts name.name + ' ' + name.annual_revenue.to_s
        #puts name.annual_revenue
end


# puts @test
# puts @test.name
@test3 = Store.where(womens_apparel: TRUE)
@test3.each do |name|
    puts name.name + ' ' + name.annual_revenue.to_s
    #puts name.annual_revenue
end
# to try
# puts @test2.to_sql
#    using raise and inspect
# raise.@test.inspect

#@test3 = Store.where("womens_apparel = ? and annual_revenue < ?", true, 1000000)
@test3 = Store.where(womens_apparel: true).where("annual_revenue < ?", 1000000)
@test3.each do |name|
    puts name.name + ' ' + name.annual_revenue.to_s
    #puts name.annual_revenue
end