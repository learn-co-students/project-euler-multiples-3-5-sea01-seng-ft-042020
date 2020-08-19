# Enter your object-oriented solution here!
  
class Multiples
    attr_reader :limit, :multiples
  
    def initialize(limit)
      @limit = limit
      @multiples = collect_multiples
    end
  
    def collect_multiples
        multiples = []
        for i in 1...limit
            multiples.push(i) if i%3 == 0 || i%5 == 0
        end
        return multiples
    end
    
    def sum_multiples
        return collect_multiples.sum
    end

  end