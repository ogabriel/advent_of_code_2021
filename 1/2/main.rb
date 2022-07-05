nums = File.readlines("#{__dir__}/../input.txt")

count = 0

sums = []

nums.each_cons(3) do |prev, current, upcoming|
  prev = prev.to_i
  current = current.to_i
  upcoming = upcoming.to_i

  sum = prev + current + upcoming

  sums << sum
end

sums.each_cons(2) do |prev, current|
  if current > prev
    count += 1
  end
end


puts "the count of increases is #{count}"
