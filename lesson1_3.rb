# frozen_string_literal: true

def sides(first, second, third)
  if (first == second) && (second == third) && (third == first)
    puts 'Your triangle is equilateral'
  elsif (first == second) || (second == third) || (third == first)
    puts 'Your triangle is isosceles'
  end
end

def rectangular(first, second, third)
  if first > second && first > third
    max = first
    cathet1 = second
    cathet2 = third
  elsif second > first && second > third
    max = second
    cathet1 = first
    cathet2 = third
  else
    max = third
    cathet1 = first
    cathet2 = second
  end
  if max**2 == cathet1**2 + cathet2**2
    puts 'Your triangle is rectangular'
  end
end

puts 'Enter first side of triangle'
a = gets.chomp.to_f
puts 'Enter second side of triangle'
b = gets.chomp.to_f
puts 'Enter third side of triangle'
c = gets.chomp.to_f

sides(a, b, c)
rectangular(a, b, c)
