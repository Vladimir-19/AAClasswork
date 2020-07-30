# PHASE 2
require 'byebug'
def convert_to_int(str)
  begin 
  num = Integer(str)
  rescue ArgumentError 
    puts "Cannot convert to Integer"
  ensure
    num ||= 0
  end 
   num
end

#p convert_to_int("12.3")

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

class CoffeeError < StandardError
  def message
   "You can try one more time"
  end
end

class GameOver < StandardError
  def message
   "Now I'm gonna eat you"
  end
end

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit 
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  elsif maybe_fruit == "coffee"
    raise CoffeeError
  else 
    raise GameOver 
  end 
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"
  begin
  puts "Feed me a fruit! (Enter the name of a fruit:)"
  maybe_fruit = gets.chomp
   
  reaction(maybe_fruit) 
  rescue CoffeeError => error_instance
    puts error_instance.message
    retry
  rescue GameOver => e
    puts e.message
  end
end  

#p feed_me_a_fruit

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    raise ArgumentError.new("Too new") if @yrs_known < 5
    raise ArgumentError.new("'name' cannot be blank") if name.empty?
    raise ArgumentError.new("'fav_pasttime' cannot be blank") if fav_pastime.empty?
    @name = name
    @yrs_known = yrs_known
    @fav_pastime = fav_pastime
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end


