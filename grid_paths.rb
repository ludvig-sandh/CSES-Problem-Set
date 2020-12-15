input = File.open("in.txt").readlines
n = input[0].to_i
grid = []
i = 0
while i < n
    grid << input[1 + i]
    i += 1
end

mem = []
i = 0
while i < n
    mem << []
    i += 1
end
mem[n - 1][n - 1] = 0
r = 0
while r < n
    c = 0
    while c < n
        if r == 0 && c == 0
            mem[r][c] = 1
        elsif grid[r][c] != "*"
            sum = 0
            if grid[r - 1][c] != "*" && r > 0 && c >= 0
                sum += mem[r - 1][c]
            end
            if grid[r][c - 1] != "*" && r >= 0 && c > 0
                sum += mem[r][c - 1]
            end
            mem[r][c] = sum
        end
        c += 1
    end
    r += 1
end
puts mem[n - 1][n - 1]
