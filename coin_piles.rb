n = gets.to_i
i = 0
while i < n
    cases = gets.split().map(&:to_i)
    sum = cases[0] + cases[1]
    if sum % 3 == 0 && cases[0] <= cases[1] * 2 && cases[1] <= cases[0] * 2
        puts "YES"
    else
        puts "NO"
    end
    i += 1
end
#5:07