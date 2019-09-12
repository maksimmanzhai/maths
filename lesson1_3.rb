def sides(x, y, z)
  if (x == y)&&(y == z)&&(z == x)
    puts "Your triangle is equilateral"
  else
    if (x == y)||(y == z)||(z == x)
      puts "Your triangle is isosceles"
    end
  end
end

def rectangular(x, y, z)
  if x > y && x > z
    max = x
    cathet_1 = y
    cathet_2 = z
  else
    if y > x && y > z
      max = y
      cathet_1 = x
      cathet_2 = z
    else
      max = z
      cathet_1 = x
      cathet_2 = y
    end
  end
  if max ** 2 == cathet_1 ** 2 + cathet_2 ** 2
    puts "Your triangle is rectangular"
  end
end

puts "Enter first side of triangle"
a = gets.chomp.to_f
puts "Enter second side of triangle"
b = gets.chomp.to_f
puts "Enter third side of triangle"
c = gets.chomp.to_f

sides(a, b, c)
rectangular(a, b, c)
