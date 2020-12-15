size = gets.chomp.to_i
nums = gets.chomp.split.map(&:to_i)

def copy(ar)
    newAr = []
    for a in ar do
        newAr << a
    end
    return newAr
end

def dp(nums, mem = {})
    if nums.length == 0
        return 0
    end
    if mem[nums] != nil
        return mem[nums]
    end
    leftAr = copy(nums)
    left = leftAr.shift
    if leftAr[0] > leftAr[-1]
        leftAr.shift
    else
        leftAr.pop
    end
    left += dp(leftAr, mem)
    rightAr = copy(nums)
    right = rightAr.pop
    if rightAr[0] > rightAr[-1]
        rightAr.shift
    else
        rightAr.pop
    end
    right += dp(rightAr, mem)
    return mem[nums] = [left, right].max
end

puts dp(nums)