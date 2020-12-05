def getNextPossible(n, lastSum)
    a = lastSum * 2
    b = (n - 1)**4 - a
    sum = 0
    sum += 48
    sum += ((n - 4) * 2 - 1) * 9
    b += sum
    return (n**4 - b) / 2
end

def getPossible(n)
    sum = 0
    i = 0
    while i < n
        j = 0
        while j < n
            attacks = [[i + 2, j + 1], [i + 2, j - 1], [i + 1, j + 2], [i + 1, j - 2], [i - 2, j + 1], [i - 2, j - 1], [i - 1, j + 2], [i - 1, j - 2]]
            not_possible = 1
            for attack in attacks do
                if attack[0] >= 0 && attack[0] < n && attack[1] >= 0 && attack[1] < n
                    not_possible += 1
                end
            end
            sum += n * n - not_possible
            j += 1
        end
        i += 1
    end
    return sum / 2
end

input = gets.chomp
n = input.to_i
i = 1
fifth = 0
while i <= n
    if i <= 5
        fifth = getPossible(i)
        puts fifth
    else
        fifth = getNextPossible(i, fifth)
        puts fifth
    end
    i += 1
end
#1:33:36