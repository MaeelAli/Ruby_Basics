#RubyMonks Problems

## Build a calculator that performs addition and subtraction
#Problem Statement
#Create a class Calculator, which performs addition and subtraction of two numbers at a time. The sample code explains the expected API.
class Calculator
  def add(a, b)
   # your code here
    a + b
  end

  def subtract(a, b)
   # your code here
   a - b
  end
end

## [Find the length of strings in an array]
#Problem Statement:
# Given an array containing some strings, return an array containing the length of those strings.
def length_finder(input_array)
  lengths = Array.new
  input_array.each do |i|
    lengths << i.length
  end
  lengths
end

## Find the frequency of a string in a sentence
#Problem Statement
#Given a sentence containing multiple words, find the frequency of a given word in that sentence.
#Construct a method named 'find_frequency' which accepts two arguments 'sentence' and 'word', both of which are String objects.
def find_frequency(sentence, word)
  # Your code here
  sentence.downcase.split.count(word.downcase)
end

## Sort the words in a given sentence
#Problem Statement
#Create a method named 'sort_string' which accepts a String and rearranges all the words in ascending order, by length. Let's not treat the punctuation marks any different than ot#her characters and assume that we will always have single space to separate the words.
#Example: Given a string "Sort words in a sentence", it should return "a in Sort words sentence".
def sort_string(string)
  # your code here
  x = string.split
  x.sort!{|x,y| x.length <=> y.length}
  x.join(" ")
end

## Select random elements from an array
#Problem Statement
#Create a method 'random_select' which, when given an array of elements (array) and a number (n), returns n randomly selected elements from that array.
def random_select(array, n)
  # your code here
  x = Array.new
  n.times do 
    x << array[rand(array.length)]
  end
  x
end

## Hiring Programmers - Boolean Expressions in Ruby
#We are looking to hire experienced Ruby programmers. Our ideal candidate has 2 or more years of experience, but some programmers become really good even before that. We'll consider their Github points (a nice indicator of a good programmer), and even if they are not experienced, candidates with 500 Github points or more can apply. And there is one more catch: Ruby being a cool and awesome language, a lot of smart youngsters are very good at it. We love those kids, but for this particular job we'd rather have them study at school than work. Let us filter out candidates who are younger than 15. Also we don't want to consider candidates who applied recently for this opening.
is_an_experienced_programmer = (candidate.age > 14) && !candidate.applied_recently? && candidate.languages_worked_with.include?('Ruby') && (candidate.years_of_experience > 2 || candidate.github_points > 499)


## Palindromes
#Problem Statement
#Given a sentence, return true if the sentence is a palindrome.
def palindrome?(sentence)
  # Write your code here
  sentence.gsub!(" ", "")
  sentence.downcase!
  sentence == sentence.reverse
end
# Compute sum of cubes for given range
# Problem Statement
# Compute the sum of cubes for a given range a through b.
def sum_of_cubes(a, b)
  (a..b).inject(0) { |sum, x| sum += (x*x*x) }
end

## Find non-duplicate values in an Array
#Problem Statement
#Given an Array, return the elements that are present exactly once in the array.
def non_duplicated_values(values)
  # Write your code here
  values.select{|x| values.count(x) == 1} 
end

# Check if all elements in an array are Fixnum
# Problem Statement
# Given an array, return true if all the elements are Fixnums.
def array_of_fixnums?(array)
  array.all? { |x| x.is_a? Fixnum }
end

#Time to run code
#Problem Statement
#You are given some code in the form of lambdas. 
#Measure and return the time taken to execute that code.
def exec_time(proc)
  begin_time = Time.now
  proc.call
  Time.now - begin_time
end
  
# Number shuffle
# Problem Statement
# Given a 3 or 4 digit number with distinct digits, return a sorted array of all the unique numbers that can be formed with those digits.  
def number_shuffle(number)
  # your code here
  x = number.to_s.split('').permutation.to_a
  x.map{|i| i.join("").to_i}
end

# Orders and Costs
# Problem Statemnt
# A restaurant has incoming orders for which you need to compute the costs based on the menu.
#You might get multiple orders at times.

class Restaurant
  def initialize(menu)
    @menu = menu
  end

  def cost(*orders)
    orders.inject(0) do |total_cost, order|
      total_cost + order.keys.inject(0) {|cost, key| cost + @menu[key]*order[key] }
    end
  end
end
  
# Your Sum
# Problem Statment
 #Given a custom class MyArray, 
#write a 'sum' method that takes a block parameter.
class MyArray
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def sum(initial_value = 0)
    return array.inject(:+) + initial_value unless block_given?
    sum = initial_value
    array.each {|n| sum += yield(n) }
    sum
  end
end
