row1 = gets.chomp.split.map(&:to_i)
coinCount = row1[0]
sum = row1[1]
coinVals = gets.chomp.split.map(&:to_i)

mem = Array.new(sum + 1, 1e9)
mem[0] = 0
i = 1
while i <= sum
    j = 0
    while j < coinVals.length
        if i - coinVals[j] >= 0
            mem[i] = [mem[i], 1 + mem[i - coinVals[j]]].min
        end
        j += 1
    end
    i += 1
end

puts mem[sum] == 1e9 ? -1 : mem[sum]


'''
def dp(i, left, coinVals, mem = [])
    if i == coinVals.length
        return 10e9.to_i
    end
    if left == 0
        return 0
    elsif left < 0
        return 10e9.to_i
    end

    if mem[i] != nil
        if mem[i][left] != nil
            return mem[i][left]
        end
    else
        mem[i] = []
    end

    use = 1 + dp(i, left - coinVals[i], coinVals, mem)
    skip = dp(i + 1, left, coinVals, mem)
    best = [use, skip].min
    return mem[i][left] = best
end

puts dp(0, sum, coinVals)'''