n = gets.chomp.to_i
sum_numbers_to_n = (n**2 + n) / 2

if sum_numbers_to_n % 2 == 0
    puts "YES"
    stack_sum = sum_numbers_to_n / 2
    left = []
    right = []
    lSum = 0
    rSum = 0
    i = n
    while i > 0
        if lSum == rSum
            left << i
            lSum += i
        elsif lSum > rSum
            right << i
            rSum += i
        else
            left << i
            lSum += i
        end
        i -= 1
    end
    puts left.length
    for l in left do
        print l.to_s + " "
    end
    puts
    puts right.length
    for r in right do
        print r.to_s + " "
    end
else
    puts "NO"
end
#13:45