
#=begin
# 1. Instructions and Interpreters
# Running Ruby from the command line
# Hello World Example


class Sample
  def hello
    puts "Hello, world"
  end
end

s = Sample.new
s.hello
#=end #############################################################

#=begin
# 2. Variables

# Creating and Assigning a Variable
puts "[Creating and Assigning a Variable]"
a = 5
puts a

#Right Side First
puts "[Right Side First]"
b = 10 + 5
puts b

#Flexible Typing
puts "[Flexible Typing]"
c = 20
c = "hello"
puts c

# Naming Variables

ruby_naming_convention = 
"[Naming Variables]
- Always start with lower case letter.
- Have no spaces.
- Do not contain most special characters $ @ and &.
- Use snake case where each word in the name is lowercase and connected by underscore.
- Are named after the meaning of their contents, not the type of their contents.
- Are NOT abbreviated"
puts ruby_naming_convention
#=end ##########################################

