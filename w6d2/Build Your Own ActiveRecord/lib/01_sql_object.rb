require_relative 'db_connection'
require 'active_support/inflector'
# NB: the attr_accessor we wrote in phase 0 is NOT used in the rest
# of this project. It was only a warm up.

#vroom!

class SQLObject #THIS IS MEANT TO BE INHERITED. Shall be used by subclasses
  def self.columns #returns [:id, :name, :etc]  
    return @columns if @columns #this will make sure we only query the DB once
    ans = DBConnection.execute2(<<-SQL)
      SELECT
        *
      FROM
        #{self.table_name}
      LIMIT 0
    SQL
    @columns = ans.first.map(&:to_sym)
    #we need .first cuz [[:id, :name]]
  end

  def self.finalize!
    # @@attributes = Hash.new(0)  #=> {name: "Gizmo"}
    #^^^^ self.attributes will return to us a hash, so we don't need to build here
    self.columns.each do |name|     
      define_method("#{name}") do  #getter
        self.attributes[name] 
      end      
      define_method("#{name}=") do |val|   #setter, put args in pipes
        self.attributes[name] = val #@ goes here to get the instance var for name passed in
      end
    end  #returns a hash
  end

  def self.table_name=(table_name)
    @table_name = table_name 
  end

  def self.table_name 
    @table_name ||= 'cats' #see 'lazy initialization'
  end 

  def self.all
    # ...
    # @@ans ||= [] #mild concern, 2nd call to ::all doesn't flush old data
    

  end

  def self.parse_all(results)
    # ...
  end

  def self.find(id)
    # ...
  end

  def initialize(params = {}) #{name: 'Don Frye', id: 100, owner_id: 4}
      #assume that the finalize! method has been called on subclass already
    
    params.each do |k, v|
      if !self.class.columns.include?(k) 
        raise "unknown attribute #{k}"
      else   
        self.send("#{k}=v") = v  #use the readers/writers from our finalize! method, since that's been run already ;)   
      end
    end
        #we want attributes to now include our params, but check that our col does exist first
  end
  #Thanks everyone for the productive session! Yall are great -cb
  #NOOOOOOOOOOOO!!!!
    

    #   loop 
    #    params.keys
    #     self.attributes

    
    # """ 
    # ?? params.each do |k,v| ;  
  
# """
#     
  #when do we need SQLObject.new(________)
  #where do the params tie in?
  #when do we send?
  #our finalize makes getters and setters, but without taking in any args?


  def attributes # this will be a reader and will always have a return value 
    @attributes ||= Hash.new(0)
    # @columns.each{|col| @attributes[col] = 1}
    # @attributes
  end

  def attribute_values
    # ...
  end

  def insert
    # ...
  end

  def update
    # ...
  end

  def save
    # ...
  end
end
