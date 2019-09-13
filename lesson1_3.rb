# frozen_string_literal: true

sides_of_triangle = []

puts 'Enter first side of triangle'
a = gets.chomp.to_f
sides_of_triangle.push(a)
puts 'Enter second side of triangle'
b = gets.chomp.to_f
sides_of_triangle.push(b)
puts 'Enter third side of triangle'
c = gets.chomp.to_f
sides_of_triangle.push(c)
sides_of_triangle.sort!

if sides_of_triangle.uniq.size == 1
  puts 'Your triangle is equilateral'
elsif sides_of_triangle.uniq.size == 2
  puts 'Your triangle is isosceles'
elsif sides_of_triangle[2]**2 == sides_of_triangle[0]**2 + sides_of_triangle[1]**2
  puts 'Your triangle is rectangular'
else
  puts 'Your triangle is wrong'
end
