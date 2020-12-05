input = gets.chomp
lastLetter = input[0]
currentCount = 1
bestCount = 1
i = 1
while i < input.length
    if input[i] == lastLetter
        currentCount += 1
        if currentCount > bestCount
            bestCount = currentCount
        end
    else
        lastLetter = input[i]
        currentCount = 1
    end
    i += 1
end
puts bestCount
#2:11