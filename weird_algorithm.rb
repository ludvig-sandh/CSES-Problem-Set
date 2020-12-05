input = gets
n = input.to_i
out = ""
while n != 1
    out += n.to_s + " "
    if n % 2 == 0
        n /= 2
    else
        n = n * 3 + 1
    end
end
out += n.to_s
puts out
#2:47