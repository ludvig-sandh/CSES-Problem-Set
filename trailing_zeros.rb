n = gets.to_i
s = 5
zeros = 0
while s <= n
    zeros += n / s
    s *= 5
end
puts zeros
#21:01