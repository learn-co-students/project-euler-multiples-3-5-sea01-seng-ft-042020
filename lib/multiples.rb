# Enter your procedural solution here!
def collect_multiples(limit)
    multiples = []
    for i in 1...limit
        multiples.push(i) if i%3 == 0 || i%5 == 0
    end
    return multiples
end

def sum_multiples(limit)
    return collect_multiples(limit).sum
end