# class CoffeeError << ArgumentError; end
def convert_to_int(str)
  begin
    Integer(str)
  rescue ArgumentError
    puts 'This argument cannot be converted to integer'
    return nil
  end
    

end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  # elsif maybe_fruit == 'coffee'
  #   retry feed_me_a_fruit
  else
    puts 'The monster only likes things that are included in fruits'
    raise StandardError 
  end
end

class CoffeeError < StandardError
  def message
    "I can't have any more caffeine. My poor heart couldn't take it. You can try again."
  end
end

class NotAFruitError < StandardError
  def message
    "That doesn't look like a fruit. You tricked me. * runs away *"
  end
end

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  elsif maybe_fruit == 'coffee'
    raise CoffeeError
  else
    raise NotAFruitError
  end
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"

  begin
    puts "Feed me a fruit! (Enter the name of a fruit:)"
    maybe_fruit = gets.chomp
    reaction(maybe_fruit)  ### return CofeeError or NotAFruitError
  rescue CoffeeError => e
    p e
    puts e.message
    retry
  rescue NotAFruitError => e
    p e
    puts e.message
  end
end  


# PHASE 4
# class BestFriend
#   def initialize(name, yrs_known, fav_pastime)
#     @name = name
#     @yrs_known = yrs_known
#     @fav_pastime = fav_pastime
#   end

#   def talk_about_friendship
#     puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
#   end

#   def do_friendstuff
#     puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
#   end

#   def give_friendship_bracelet
#     puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
#   end
# end