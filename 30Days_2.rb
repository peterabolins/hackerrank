# Language: Ruby
#
# 30 Days of Code
# Day 2: Arithmetic!
#
# Input: 
#      Three numbers, (M, T, and X), each on separate lines:
#          M (double) = original price of the meal
#          T (integer) = percentage that the customer wants to tip, wrt M.
#          X (integer) = tax percentage that the customer has to pay wrt M.
# Output:
#      A string stating...
#      The final price of the meal is $F.
#        where F (integer) is rounded to the closest dollar.
#
#!/bin/ruby
m = gets.strip.to_f
t = gets.strip.to_i
x = gets.strip.to_i

tip = t * m / 100
tax = x * m / 100

final = m + tip + tax

puts "The final price of the meal is $#{final.round}."
