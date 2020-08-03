class Integer
  # Integer#hash already implemented for you
end

class Array
  def hash
    hash = 0 
    self.each_with_index do |ele, i|
      if i.even?
        hash += ele.hash
      else
        hash -= ele.hash
      end
    end 
    hash
  end
end

class String
  def hash
    hash = 0
    alpha = ('a'..'z').to_a
    self.each_char.with_index do |ele,i|
      if i.even?
        hash += alpha.index(ele).hash
      else
        hash -= alpha.index(ele).hash
      end
    end
    hash
  end
end

class Hash
  # This returns 0 because rspec will break if it returns nil
  # Make sure to implement an actual Hash#hash method
  def hash
    hash = 0 
    #alpha = ('a'..'z').to_a
    self.each {|k, v| hash += k.hash}
    hash
  end
end
