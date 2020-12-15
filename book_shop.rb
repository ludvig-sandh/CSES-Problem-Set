input = File.open("in.txt").readlines
sum = input[0].split[1].to_i
prices = input[1].split.map(&:to_i)
pages = input[2].split.map(&:to_i)

def dp(i, left, prices, pages, mem = [])
    if i == prices.length
        return 0
    end
    if mem[i] != nil
        if mem[i][left] != nil
            return mem[i][left]
        end
    else
        mem[i] = []
    end
    best = [dp(i + 1, left, prices, pages, mem)]
    if left - prices[i] >= 0
        best << pages[i] + dp(i + 1, left - prices[i], prices, pages, mem)
    end
    best = best.max
    return mem[i][left] = best
end

puts dp(0, sum, prices, pages)