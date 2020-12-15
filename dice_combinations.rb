dice = [1, 2, 3, 4, 5, 6]
target = gets.chomp.to_i
mem = [1]

i = 1
while i <= target
    sum = 0
    j = 0
    while j < dice.length
        if i - dice[j] >= 0
            sum += mem[i - dice[j]]
        end
        j += 1
    end
    mem[i] = sum % 1000000007
    i += 1
end
puts mem[-1]

#alldeles för lång tid, och sökte upp typ.