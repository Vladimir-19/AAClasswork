require "byebug"
class MaxIntSet
  
  attr_accessor :store
  def initialize(max)
    @max = max
    @store = Array.new(max) { Array.new }
  end

  def insert(num)
    if num > @max || num < 0
      raise "Out of bounds"
    else
      self.store[num] = true
    end
  end

  def remove(num)
    self.store[num] = false
  end

  def include?(num)
    self.store[num] == true
  end

  private

  def is_valid?(num)
  end

  def validate!(num)
  end
end


class IntSet
  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @num_buckets = num_buckets
  end

  def insert(num)
    idx = num % @num_buckets
    @store[idx] << num unless self.include?(num)
  end

  def remove(num)
    self[num].delete(num)
  end

  def include?(num)
    idx = num % @num_buckets
    @store[idx].include?(num)
  end

  private

  def [](num)
    idx = num % @num_buckets
    @store[idx] 
  end

  def num_buckets
    @store.length
  end
end

class ResizingIntSet
  attr_reader :count, :store

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(num)
    idx = num % num_buckets
    if !self.include?(num) # unless self.include?(num)
      self[num] << num
      @count += 1
    end
    if count > num_buckets
      resize!
    end
  end

  def remove(num)
    if self.include?(num)
      self[num].delete(num)
      @count -= 1 
    end
  end

  def include?(num)
    #idx = num % num_bucket
    self[num].include?(num)
  end

  #private
  

  def [](num)
    idx = num % num_buckets
    @store[idx]
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
