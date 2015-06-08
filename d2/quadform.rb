puts "Hey bru. Let's compute some quadform."

puts "Give me an A"
a = gets.to_f
puts "Give me a B"
b = gets.to_f
puts "Give me a C"
c = gets.to_f
x1 = (-b + Math.sqrt(b*b - 4*a*c))/2*a
# and
x2 = (-b - Math.sqrt(b*b - 4*a*c))/2*a
puts "beep computing boop boop..."
puts "x is either"
puts "#{x1}"
puts "or"
puts "#{x2}"
puts "Goodbye!"
