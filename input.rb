def input()
    return File.open("in.txt").readlines
end

def array(line)
    return line.split.map(&:to_i)
end