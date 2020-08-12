class AttrAccessorObject
  def self.my_attr_accessor(*names) #assume names = [:sym1, :sym2, :sym3]
    #
    #NB: alt+z not allowed during live share
    #names will be instance vars for us to CREATE a get/setters

    # ...
    names.each do |name|
      
      define_method("#{name}") do          #getter
        instance_variable_get("@#{name}")  
      end
        
      define_method("#{name}=") do |val|   #setter, put args in pipes
        instance_variable_set("@#{name}", val) #@ goes here to get the instance var for name passed in
      end
      
    end
  end
end
attr_accessor :name



# "#{name}" <= sanitizing input to be strings, regardless of what is put in
# def initialize
#   @dog
#   @speak
#   @bread
# end

# :name, :speak, :bread

# def dog #NORMAL GETTER
#     @dog
# end

# def dog=(val) #NORMAL SETTER
#   @dog = val
# end


# define_method(name) #=> this points to a function but is not a function itself