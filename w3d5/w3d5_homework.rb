#   class Stack

#     attr_reader :ivar
#   def initialize
#       @ivar = []# create ivar to store stack here!
#     end

#     def push(el)
#       ivar << el # adds an element to the stack
#     end

#     def pop
#       arr = [] 
#       arr << @ivar[-1]
#       ivar.delete(@ivar[-1]) # removes one element from the stack
#     end

#     def peek
#       ivar.last # returns, but doesn't remove, the top element in the stack
#     end
#   end

#   arr = Stack.new
#   p arr.push("banana")
#   p arr.push("apples")
#   p arr.push("berrys")
#   p arr.peek 
#   p arr.pop
#   p arr

# class Queue
#     attr_reader :collector
#     def initializr 
#         @collector = []
#     end

#     def enqueue(el)
#         collector.push(el)
#         el
#     end

#     def dequeue
#         collector.shift
#     end

#     def peek
#         collector.first
#     end
# end

# arr = Queue.new
#   p arr.enqueue("banana")
#   p arr.dequeue("apples")
#   p arr.dequeue("berrys")
#   p arr.dequeue 
#   p arr.peek
#   p arr

class Map
    attr_reader :col 
    
    def initialize
        @col = []
    end

    def set(key, value)
        col << [key, value]
    end

    def get(key)
        col.each {|sub| return sub if sub.include?(key)}
    end

    def delete(key)
        col.gsub(key, "")
    end

    def show(key)
        p get(key)
    end
end