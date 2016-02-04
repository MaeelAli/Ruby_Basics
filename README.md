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
	- `"cat".reverse = "tac"`
	- `"cat".length = 3`
	- `"cat" * 3 	= "catcatcat" //concatenation`
	- `"".lines //splits into lines (based \n)`
	- `"".bytes //splits into bytes`
	- `"".chars //splits into chars`

	- replace 1st instance of word:
  ```
	x = " The cat is green. The cat is fat."
	x['cat'] = 'dog'
	print x = "the dog is green. The cat is fat" 
  ```
    - string Interpolation Ex:
  ```
  a = 1
  b = 4
  puts "The number #{a} is less than #{b}"
  => The number 1 is less than 4
 ```
  

#### General operations:
	- .to_s //convert to string
	- .to_i //convert to int
	- .to_a //convert to array
	- print x //prints variable as string
	- methods named with ? at end indicate they return boolean value
	 print "pre", "event",  "ual", "ism" //menthod with multiple arguments

	 /* Making a method *?
	 def load_comics( path )
  		comics = {}
  		File.foreach(path) do |line|
    		name, url = line.split(': ')
    		comics[name] = url.strip
  		end
  		comics //return comics
	end


#### Blocks
	- chunk of ruby code surrounded by {}
	- 5.times{} //runs code in block 5 times
	- 
#### Array:
	- [] //empty array
	- [3,2,1].max = 3 //max element of array
	- ticket = [3,2,1] //assign var to array
	- ticket.sort = [1,2,3] //new array returned. var ticket is still [3,2,1]
	- ticket.sort! = [1,2,3] //modifies var ticket and returns ticket. ticket is now [1,2,3]
	- .join //like .to_s

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


#### File I/O
	- Dir.entries "/" //root directory list items there
	- Dir.entries["/*.txt"] //search for text files in entries
	- print File.read("/comic.txt") //open and read a file
	- FileUtils.cp('/a.txt', '/home/a.txt' ) //copy file to other directory