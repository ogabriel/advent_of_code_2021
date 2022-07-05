x, y, aim = 0, 0, 0

FILE_PATH = "#{__dir__}/../input.txt"

File.readlines(FILE_PATH).each do |full_command|
  command, position = full_command.split(' ')

  position = position.to_i

  case command
  when 'forward'
    x += position
    y += (aim * position)
  when 'up'
    aim -= position
  when 'down'
    aim += position
  end
end

product = x * y

puts "the product is: #{product}"
