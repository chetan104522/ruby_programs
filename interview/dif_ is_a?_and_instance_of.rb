# 1 diff is_a? and instance_of? 


class Vechical
end

class Car < Vechical
end


car = Car.new
car.is_a?(Vechical) #true
car.is_a?(Car) #true


car.instance_of?(Car) #true
car.instance_of?(Vechical) # false