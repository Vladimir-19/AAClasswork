class HashSet
  attr_reader :count, :store

  def initialize(num_buckets = 8)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(key)
    num = key.hash 
    idx = num % num_buckets
    if !self.include?(num) # unless self.include?(num)
      self[key] << key
      @count += 1
    end
    if count > num_buckets
      resize!
    end
  end

  def include?(key)
    self[key].include?(key)
  end

  def remove(key)
    if self.include?(key)
      self[key].delete(key)
      @count -= 1 
    end
  end

  private

  def [](key)
    num = key.hash
    idx = num % num_buckets
    @store[idx] # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end

  def resize!
    old_store = self.store
    @store = Array.new(2*num_buckets){Array.new}
    @count = 0 
    old_store.each do |bucket|
      bucket.each do |ele| 
        self.insert(ele)
      end
    end
  end
end
