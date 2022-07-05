nums = File.readlines("#{__dir__}/../input.txt")

count = 0

nums.each_cons(2) do |prev, current|
  prev = prev.to_i
  current = current.to_i

  if prev > 0 && current > prev
    count += 1
  end
end

puts "the count of increases is #{count}"
