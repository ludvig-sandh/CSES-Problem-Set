row1 = gets.chomp.split.map(&:to_i)
coinCount = row1[0]
sum = row1[1]
coinVals = gets.chomp.split.map(&:to_i)

mem = Array.new(sum + 1, 0)
mem[0] = 1

i = 0
while i <= sum
    j = 0
    while j < coinCount
        if i - coinVals[j] >= 0
            mem[i] += mem[i - coinVals[j]]
        end
        j += 1
    end
    mem[i] %= 1000000007
    i += 1
end

puts mem[sum]