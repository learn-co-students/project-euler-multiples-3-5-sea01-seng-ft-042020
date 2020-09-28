def collect_multiples(limit)
    ar = []
    multOf3 = 1
    multOf5 = 1
    while (multOf3) * 3 < limit || (multOf5) * 5 < limit
        if (multOf3) * 3 === (multOf5) * 5
            ar.push(multOf3 * 3)
            multOf3 += 1
            multOf5 += 1
        elsif multOf3 * 3 < multOf5 * 5
            ar.push(multOf3 * 3)
            multOf3 += 1
        else
            ar.push(multOf5 * 5)
            multOf5 += 1
        end
    end
    return ar
end

def sum_multiples(limit)
    collect_multiples(limit).reduce(0) {|sum, n| sum += n}
end