input = gets.chomp
n = input.to_i
i = 0
while i < n
    current = gets.chomp.split().map(&:to_i)
    ml = current.max
    ss = ml - 1
    sa = ss**2
    if ml % 2 == 0
        sa += current[0]
        sa += ml - current[1]
    else
        sa += current[1]
        sa += ml - current[0]
    end
    puts sa
    i += 1
end
#14:28