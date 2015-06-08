class Person
  def initialize(name)
    @name = name # Line 3
  end
end

class Engineer < Person
  def initialize(name, field)
    @name = name
    @field = field
  end

  def go_to_work
    puts "Going to work as an engineer in #{field}..."
  end
end

elon_musk = Engineer.new('Elon Musk', 'space travel')



#1. Why is line 3 necessary? What happens without it?

  #To denote that name is a variable and can be used throughout the code.
  #Without it, it could not be referred to anywhere in the class.

#2. Is Engineer a subclass or a superclass?

  #Engineer is a subclass.

#3. What will running Engineer.go_to_work do? Why?

  #It will put "Going to work as an engineer in ..." ???

#4. What is elon_musk? Choose all that apply:

  #A class no
  #A method yes?
  #An instance yes
  #An object yes?
  #A variable no 
