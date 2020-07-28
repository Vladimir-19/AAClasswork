class PolyTreeNode
    require 'byebug'
    attr_accessor :value, :parent, :children
    def initialize(value)
        @parent = nil
        @children = []
        @value = value
    end
#b.parent = a 

#b.parent = a

# b.parent = c   // c.children = [b,t,y,v,w]
# b.parent = nil
# c.children.delte(b)
# c = b.parent // self.parent


    def parent=(new_parent) 
        if self.parent == nil  
            #debugger
            @parent = new_parent
            new_parent.children << self 
        else  self.parent != nil
            @parent.children.delete(self) 
            @parent = new_parent
            #debugger
            new_parent.children << self unless new_parent == nil 
        end 
    end

    #  'a' = Node.new
    #  a.add_child(b)
    #  b.parent=(self)

    def add_child(child)
        child.parent = self #now self is a parent for the child
        self.children << child unless self.children.include?(child)    
    end

    def remove_child(child)
        #debugger
        raise "error" if child.value == 'root'
        self.children.delete(child)  #smth.children.delete(child)  child = c  // c.parent = b
        child.parent = nil   # smth.parent=nil
    end
    a = 'a'
    b = 'b'
    c= 'c'
    d = 'd'
    
    def dfs(target_value)

        return self if self[-1].value == target_value
        debugger
        if self.children.length > 0
           self.children.each do |child|
                child.dfs(target_value)
            end
        # elsif
        #     return nil
        end
        
        nil
    end

    """
    - check if current nodes matches target
    - if no match, and it has children, iterate through all children
    - if no children, return nil

    """

    
end