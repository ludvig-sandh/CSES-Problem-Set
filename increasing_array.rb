input = gets.chomp
n = input.to_i
input = gets.chomp
nums = input.split().map(&:to_i)
modSum = 0
i = 1
while i < n
    if nums[i] < nums[i - 1]
        dif = nums[i - 1] - nums[i]
        modSum += dif
        nums[i] += dif
    end
    i += 1
end
puts modSum
#4:05