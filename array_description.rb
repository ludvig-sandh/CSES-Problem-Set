size, max = gets.chomp.split.map(&:to_i)
nums = gets.chomp.split.map(&:to_i)

lastNum = 0
for num in nums do
    if lastNum != 0 && num != 0
        if (num - lastNum).abs > 1
            puts 0
            exit
        end
    end
    lastNum = num
end

def copy(ar)
    newAr = []
    for a in ar do
        newAr << a
    end
    return newAr
end

def dp(nums, max, mem = {})
    i = nums.index(0)
    if i == nil
        return 1
    end
    if mem[nums] != nil
        return mem[nums]
    end
    ans = 0
    count = 0
    j = 1
    while j <= max
        if i != 0
            if (nums[i - 1] - j).abs > 1
                j += 1
                next
            end
        end
        if i != nums.length - 1
            if nums[i + 1] != 0
                if (nums[i + 1] - j).abs > 1
                    j += 1
                    next
                end
            end
        end
        newNums = copy(nums)
        newNums[i] = j
        ans += dp(newNums, max, mem)
        count += 1
        j += 1
    end
    return mem[nums] = ans
end

puts dp(nums, max)