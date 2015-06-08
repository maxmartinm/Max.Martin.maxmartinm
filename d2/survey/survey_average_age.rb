puts "Hello!"

puts "How old are you?"
age1 = gets
puts "How old is your mom?"
age2 = gets
puts "How old is your dad?"
age3 = gets
average_age = (age1.to_f + age2.to_f + age3.to_f) / 3
puts "Thanks for answering my creepy questions! The average age of your family is #{average_age.to_f}"
puts "Goodbye!"