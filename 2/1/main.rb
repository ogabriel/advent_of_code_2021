x, y = 0, 0

FILE_PATH = "#{__dir__}/../input.txt"

File.readlines(FILE_PATH).each do |full_command|
  command, position = full_command.split(' ')

  position = position.to_i

  case command
  when 'forward'
    x += position
  when 'up'
    y -= position
  when 'down'
    y += position
  end
end

puts x
puts y
product = x * y

puts "the product is: #{product}"
