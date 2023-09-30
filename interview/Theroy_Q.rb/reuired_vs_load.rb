1 Load reads and parses files every time the file (in which load is called) is executed.
2 when our module changes frequently we may want to pick up those changes in classes that load this module.
3 You should use load function mainly for the purpose of loading code from other files that are being dynamically changed so as to get updated code every time.

1 Require reads the file from the file system, parses it, saves to the memory, and runs it in a given place.
2 In require, if you modify the specified file when the script is running, those modifications won’t be applied,













Load Vs Require in Ruby
Read
Discuss
Practice
Load reads and parses files every time the file (in which load is called) is executed. In most cases, we’ll use require, but there are some cases when our module changes frequently we may want to pick up those changes in classes that load this module.
Syntax:

load 'filename'
Example 1:
In this example, we create a file names as car.rb which contains the following code:

puts '----------car.rb loaded-----------'
class Car
  def initialize(make, color)
  
    # Instance variables
    @make = make
    @color = color
    end
  def start_engine
    if @engine_state
      puts 'Engine already Running'
    else
      @engine_state = true
      puts 'Engine Idle'
    end
  end
end
Now, we create another file names as loadex.rb which contain the following code:

# Calling car.rb file
# Using load 
load 'car.rb'
m = Car.new('GMC', 'blue')
m.start_engine
  
# Calling car.rb file
# Using load 
load 'car.rb'
m = Car.new('GMC', 'blue')
m.start_engine
Output:


----------car.rb loaded-----------
Engine Idle
----------car.rb loaded-----------
Engine Idle
Explanation: In the above example, we can see that the load module loads the car.rb file every time the load function is called. You should use load function mainly for the purpose of loading code from other files that are being dynamically changed so as to get updated code every time.

Example 2:
In this example, we create math.rb file having code as follows:

puts '----------math.rb loaded-----------'
class Mathex
  def initialize(num1, num2)
     
    # Instance variables
    @a = num1
    @b = num2
    end
  def add
    puts 'adding both numbers'
    puts @a + @b
  end
end
Now, we create another file names as loadex1.rb which contain the following code:

# Calling math.rb file
# Using load
load 'math.rb'
m = Mathex.new(1, 2)
m.add
  
# Calling math.rb file
# Using load
load 'math.rb'
m = Mathex.new(1, 2)
m.add
Output:

----------math.rb loaded-----------
adding both numbers
3
----------math.rb loaded-----------
adding both numbers
3
Require reads the file from the file system, parses it, saves to the memory, and runs it in a given place. In require, if you modify the specified file when the script is running, those modifications won’t be applied, Ruby will use the file from memory, not from the file system of the machine. It also gives you access to several libraries and extensions inbuilt Ruby also as more stuff written by other programmers. In most cases, you’ll use require, but there are some cases when the load is beneficial, for instance, when your module changes frequently you’ll want to select up those changes in classes that load this module.
Syntax:

require 'filename'
Example 1:
In this example, we create a file names as car.rb which contains the following code:

puts '----------car.rb loaded-----------'
class Car
  def initialize(make, color)
  
    # Instance variables
    @make = make
    @color = color
    end
  def start_engine
    if @engine_state
      puts 'Engine already Running'
    else
      @engine_state = true
      puts 'Engine Idle'
    end
  end
end
Now, we create a new file requireex.rb containing following code:

# Calling car.rb file
# Using require 
require './car.rb'
m = Car.new('GMC', 'blue')
m.start_engine
  
# Calling car.rb file
# Using require 
require './car.rb'
n = Car.new('BMW', 'red')
n.start_engine
Output:

----------car.rb loaded-----------
Engine Idle
Engine Idle
Explanation: In the above example, we can see even though we called require second time it did not print “car.rb loaded” again as it did in example for load, because require only loads file once.

Example 2:
In this example, create math.rb file having code as follows:

puts '----------math.rb loaded-----------'
class Mathex
  def initialize(num1, num2)
     
    # Instance variables
    @a = num1
    @b = num2
    end
  def add
    puts 'adding both numbers'
    puts @a + @b
  end
end
Now, we create a new file requireex1.rb containing the following code:

# Calling math.rb file
# Using require 
require './math.rb'
m = Mathex.new(1, 2)
m.add
  
# Calling math.rb file
# Using require
require './math.rb'
m = Mathex.new(1, 2)
m.add
Output:

----------math.rb loaded-----------
adding both numbers
3
adding both numbers
3