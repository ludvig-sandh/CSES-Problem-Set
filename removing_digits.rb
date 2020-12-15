n = gets.to_i


mem = Array.new(n + 1, 1e9)
mem[0] = 0

i = 1
while i <= n
    is = i.to_s
    j = 0
    while j < is.length
        if i - is[j].to_i >= 0
            mem[i] = [mem[i], mem[i - is[j].to_i]].min
        end
        j += 1
    end
    mem[i] += 1
    i += 1
end

puts mem[n]
'''

def dp(i, n, mem = [])
    puts n
    if n == 0
        return i
    end
    if n < 0
        puts "ef"
        return 1e9
    end
    if mem[n] != nil
        return mem[n]
    end
    ns = n.to_s
    min = 1e9
    j = 0
    while j < ns.length
        if ns[j].to_i != 0
            min = [min, dp(i + 1, n - ns[j].to_i, mem)].min
        end
        j += 1
    end
    return mem = min
end

puts dp(0, n)'''