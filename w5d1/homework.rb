 class LRUCache
    
    def initialize(n)
        @cashe = []
        @size = n
    end

    def count
      @cashe.length # returns number of elements currently in cache
    end

    def add(el)
        if @cashe.include?(el)
            @cashe.delete(el)
            @cashe << el  
        elsif count >= @size 
            @cashe.shift 
            @cashe << el
        else 
            @cashe << el
        end# adds element to cache according to LRU principle
    end

    def show
     p @cashe
     # shows the items in the cache, with the LRU item first
    end

    private
    # helper methods go here!

  end

x = LRUCache.new(4)
p x.add("hello")
p x.add("123")
p x.add([1, 2, 3])
p x.add(:method)
p x.add("HW")
