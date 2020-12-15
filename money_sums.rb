size = gets.chomp.to_i
nums = gets.chomp.split.map(&:to_i)

def dp(i, nums, mem = [])
    if i == nums.length
        return []
    end
    if mem[i] != nil
        return mem[i]
    else
        mem[i] = []
    end
    use = [nums[i]] + dp(i + 1, nums, mem)
    len = use.length
    j = 1
    while j < len
        use[j] += nums[i]
        j += 1
    end
    skip = dp(i + 1, nums, mem)
    ans = use + skip
    return mem[i] = ans.uniq
end
ans = dp(0, nums).sort
puts ans.length
for a in ans do
    print a.to_s + " "
end