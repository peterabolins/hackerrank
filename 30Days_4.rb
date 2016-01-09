#!/bin/ruby
#
# Language: Ruby
#
# 30 Days of Code
# Day 4: Logical Operators - Class vs Instance!
#
# Input: 
#      T (Integer) - number of test cases
#      A (Integer) - Age of person, for each test case
# 
# Constraints:
#       1 <= T <= 4
#       −5 <= A <= 30
# 
# Output:
#       Text Strings, according to some logic.

class Person
    attr_accessor :age
    def initialize(initial_Age)
        if initial_Age > 0 then
            @age = initial_Age
        else
            @age = 0
            puts "This person is not valid, setting age to 0."
        end
    end
    def amIOld()
        puts "You are young." if @age < 13
        puts "You are a teenager." if @age > 12 && @age < 18
        puts "You are old." if @age > 17
      # Do some computations in here and print out the correct statement to the console
    end
    def yearPasses()
        @age += 1
    end
end

T = gets.to_i
for i in (1..T) do
    age = gets.to_i
    p = Person.new(age)
    p.amIOld()
    for j in (1..3) do
        p.yearPasses()
    end
    p.amIOld
  	puts ""
end   
