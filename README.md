# Ruby 101 The Odin Project
* By: Ismaeel Ali 

### Description
This repository will be used to learn the basics of ruby programming as part of the Odin Project.

### RUBY Learning NotePad:

#### Ruby Questions and Answers

* What is an "interpreted" language?

Ruby is an "interpreted" programming language which means it can’t run on your processor directly, it has to be fed into a middleman called the "virtual machine" or VM. The VM takes in Ruby code on one side and speaks natively to the operating system and processor on the other. The benefit to this approach is that you can write Ruby code once and, typically, execute it on many different operating systems and hardware platforms.

* What is IRB?
* What are Objects? 
* What are Methods?
* What are Classes?
* What are Blocks?
* What is an Array?
* What is an Iterator?
* What are hashes?
* What is a library?
* What is a gem?


#### String class:
* `"cat".reverse = "tac"`
* `"cat".length = 3`
* `"cat" * 3 	= "catcatcat" //concatenation`
* `"".lines //splits into lines (based \n)`
* `"".bytes //splits into bytes`
* `"".chars //splits into chars`
* `"The cat is green. The cat is fat.".include?('green') = true`
* `"Ruby is a beautiful language".starts_with?('Ruby')`
* `"I am a Rubyist".index('R')`
* `'This is Mixed CASE'.downcase`
* `"ThiS iS A vErY ComPlEx SenTeNcE".swapcase`
* `"".split # splits into words`
  
##### replace 1st instance of word:
```
	x = " The cat is green. The cat is fat."
	x['cat'] = 'dog'
	print x = "the dog is green. The cat is fat" 

  # alt way:
  "I should look into your problem when I get time".sub('I','We')
  'RubyMonk Is Pretty Brilliant'.gsub(/[A-Z]/,'0') #Converted all the capital letters to 0
```
  
##### string Interpolation Ex:
  ```
    a = 1
    b = 4
    puts "The number #{a} is less than #{b}"
    => The number 1 is less than 4
    Do remember that placeholders aren't just variables. Any valid block of Ruby code you place inside #{} will be evaluated and inserted at that location.
  ```
  

#### General operations:

##### Conversion:
```
.to_s //convert to string
.to_i //convert to int
.to_a //convert to array
```
##### Print to stdout:
`print x //prints variable as string`

##### Ternary Operator:
* In Ruby, ? and : can be used to mean "then" and "else" respectively. Here's the first example on this page re-written using a ternary operator.

##### Boolean:
* Methods named with ? at end indicate they return boolean value
* false and nil == false
* 1,0, "", everything else other than false or nil == true

##### Other:
```ruby
	 /* Making a method *?
	 def load_comics( path )
  		comics = {}
  		File.foreach(path) do |line|
    		name, url = line.split(': ')
    		comics[name] = url.strip
  		end
  		comics //return comics
	end
```  
#### Loops:

```
loop do
  monk.meditate
  break if monk.nirvana?
end
```
  
#### Blocks
	- chunk of ruby code surrounded by {}
	- 5.times{} //runs code in block 5 times
	- 
#### Array:
	- [] //empty array or Array.new
	- [3,2,1].max = 3 //max element of array
	- ticket = [3,2,1] //assign var to array
	- ticket.sort = [1,2,3] //new array returned. var ticket is still [3,2,1]
	- ticket.sort! = [1,2,3] //modifies var ticket and returns ticket. ticket is now [1,2,3]
	- .join //like .to_s
  - [1,2,3] << 'woot' // appends or use [].push('woot')

##### Transform Arrays using .map
  - `[1,2,3,4].map {|i| i + 1} \\In Ruby, the method map is used to transform the contents of an array according to a specified set of rules defined inside the code block. `

##### Filter Array using .select
```
# select even numbers
[1,2,3,4,5,6].select {|number| number % 2 == 0}
```
##### for loop array
```
array = [1, 2, 3, 4, 5]
for i in array
  # do something with i element here
end
```

##### looping with each:
```
array = [1, 2, 3, 4, 5]
array.each do |i|
  puts i
end
```

#### Dictionary - Hashes
	- books = {} //empty dictionary
	- ratings = Hash.new(0) // empty dictionary
	- :name // Ruby symbol not string, use less memory, also only keeps 1 reference in memory
	- books["book 1"] = :mediocre //add entry into dictonary 
	- books.length = 1 //length of dict
	- hashs do not observe order
	- books.keys = ["book 1"]
	- books.values = [:mediorce]
	- books.values.each { |rate| ratings[rate] += 1 } //counts # of ratings in books and stores in ratings dict
  
##### hash structure and operations example:
```ruby
restaurant_menu = {
  "Ramen" => 3,
  "Dal Makhani" => 4,
  "Tea" => 2
  }
  
restaurant_menu['Ramen'] # returns 3
keys = restaurant_menu.keys # returns array of keys of hash ["Ramen", "Dal Makhani", "Coffee"]
values = restaurant_menu.values #returns array of values of hash [3,4,2]

# Hash syntax # 2:  a flat list of parameters, arranged in pairs. 
chuck_norris = Hash[:punch, 99, :kick, 98, :stops_bullets_with_hands, true]

# Hash syntax # 3: one parameter: an array containing arrays which are themselves key-value pairs.
def artax
  a = [:punch, 0]
  b = [:kick, 72]
  c = [:stops_bullets_with_hands, false]
  key_value_pairs = [a, b, c]
  Hash[key_value_pairs]
end
```

##### Iterating over Hash:
* You can use the each method to iterate over all the elements in a Hash. However unlike Array#each, when you iterate over a Hash using each, it passes two values to the block: the key and the value of each element.

```ruby
restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
# increase prices of each item by 10%
restaurant_menu.each do |item, price|
  restaurant_menu[item] = price * 1.10
end 
```

#### Classes
##### structure ex:
```ruby
class Rectangle
  def initialize(length, breadth)
    # @ symbol denotes as being a part of the state of the class, or to use jargon, they are the "instance variables of the class."
    # This means that every instance of the class Rectangle will have its own unique copies of these variables and is in effect, a distinct rectangle.
    @length = length     
    
    @breadth = breadth
  end

  def perimeter
    2 * (@length + @breadth)
  end

  #write the 'area' method here
  def area
    @length * @breadth
  end
end
```

##### Grouping objects
` "".class  = String`
` 1.is_a?(Integer) = true

#### Methods
* methods can take arguments with default values specified if not entered by user
```ruby

def say_hello(name = "Qui-Gon Jinn")
  "Hello, #{name}."
end
```
##### Methods are Objects too
```ruby
next_method_object = 1.method("next")
puts next_method_object.call
```

##### ex using splat and hash options:
```ruby
def add(*numbers)
  numbers.inject(0) { |sum, number| sum + number }  
end

def subtract(*numbers)
  current_result = numbers.shift
  numbers.inject(current_result) { |current_result, number| current_result - number }  
end

def calculate(*arguments)
  # if the last argument is a Hash, extract it 
  # otherwise create an empty Hash
  options = arguments[-1].is_a?(Hash) ? arguments.pop : {}
  options[:add] = true if options.empty?
  return add(*arguments) if options[:add]
  return subtract(*arguments) if options[:subtract]
end
```
#### File I/O
	- Dir.entries "/" //root directory list items there
	- Dir.entries["/*.txt"] //search for text files in entries
	- print File.read("/comic.txt") //open and read a file
	- FileUtils.cp('/a.txt', '/home/a.txt' ) //copy file to other directory