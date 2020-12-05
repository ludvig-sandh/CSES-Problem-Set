input = gets
n = input.to_i
nums = gets.split().map(&:to_i)
found = []
i = 0
while i < nums.length
    if found[nums[i] - 1] == nil
        found[nums[i] - 1] = nums[i]
    end
    i += 1
end
i = 0
while i <= n
    if found[i - 1] == nil
        puts i
    end
    i += 1
end
#25:00