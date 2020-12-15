row1 = gets.chomp.split.map(&:to_i)
coinCount = row1[0]
sum = row1[1]
coinVals = gets.chomp.split.map(&:to_i)

def dp(i, left, coinVals, mem = [])
    if i == coinVals.length
        return 0
    end
    if left == 0
        return 1
    elsif left < 0
        return 0
    end
    if mem[i] != nil
        if mem[i][left] != nil
            return mem[i][left]
        end
    else
        mem[i] = []
    end
    ans = dp(i, left - coinVals[i], coinVals, mem) + dp(i + 1, left, coinVals, mem)
    return mem[i][left] = ans
end

puts dp(0, sum, coinVals)