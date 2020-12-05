input = gets.chomp
n = input.to_i
nums = []
i = 2
while i <= n
    nums << i
    i += 2
end
i = 1
while i <= n
    nums << i
    i += 2
end
i = 0
while i < n - 1
    if (nums[i] - nums[i + 1]).abs <= 1
        puts "NO SOLUTION"
        exit
    end
    i += 1
end
puts nums.join(" ")
#9:57