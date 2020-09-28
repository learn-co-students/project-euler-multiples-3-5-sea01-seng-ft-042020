# Enter your object-oriented solution here!
class Multiples
    attr_reader :limit
    def initialize(limit)
        @limit = limit
    end

    def collect_multiples
        ar = []
        multOf3 = 1
        multOf5 = 1
        while (multOf3) * 3 < self.limit || (multOf5) * 5 < self.limit
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
    
    def sum_multiples()
        self.collect_multiples().reduce(0) {|sum, n| sum += n}
    end
end