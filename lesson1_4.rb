def quadratic(a, b, c)
  d = b ** 2 - 4 * a * c
  if d > 0
    x1 = ( - b + Math.sqrt(d) ) / ( 2 * a )
    x2 = ( - b - Math.sqrt(d) ) / ( 2 * a )
    puts "d = #{d}, x1 = #{x1}, x2 = #{x2}"
  elsif d == 0
    x1 = - ( b / (2 * a ) )
    puts "d = #{d}, x1 = #{x1}"
  else
    puts "No roots"
  end
end

puts "Enter first index"
x = gets.chomp.to_f
puts "Enter second index"
y = gets.chomp.to_f
puts "Enter third index"
z = gets.chomp.to_f

quadratic(x, y, z)
