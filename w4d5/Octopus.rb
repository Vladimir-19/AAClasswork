
def biggest_fish(fishes)
    fish = fishes[0]
    (0..fishes.length).each do |i1|
        ((i1+1)...fishes.length).each do |i2|
            if fishes[i2].length > fish.length 
                fish = fishes[i2]
            end
        end
    end
    fish
end

p biggest_fish(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])

# n log n search
class Array
    def merge_sort(&prc)
        prc ||= Proc.new { |x, y| x <=> y }
        return self if self.size <= 1

        mid = self.size / 2 
        l = self.take(mid).merge_sort(&prc)
        r = self.drop(mid).merge_sort(&prc)

        Array.merge(l, r, &prc)
    end

    def self.merge(left, right, &prc)
    merged = []
        case prc.call(l.first, r.first)
        when -1
            merged << l.shift
        when 0 
            merged << l.shift 
        when 1 
            merged << r.shift
        end
        merged + l + r
    end

    def nlogn_biggest_fish(fishes)
        prc = Proc.new { |x, y| y.length <=> x.length }
        fishes.merge_sort(&prc)[0]
    end
end