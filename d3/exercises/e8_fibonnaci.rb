puts "Enter a number:"
n = gets.strip.to_i
first = 1
second = 1
fib = 1

	if n == 0 
		f = 0
	end

	if n == 1
		fib = 1
	end

	if n == 2
		fib = 1
	end

while n >= 3
	fib = first + second
	first = fib
	n = n -1
end

puts "Fibonacci at #{n}: #{fib}"