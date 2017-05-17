class Car
  def initialize 	# declaring instance variables inside the method
    @brand = "unknown"
    @max_speed = 0
    @current_speed = 0
  end

  def accelerate 	# using the variable for arthematic operation inside accelrate method
    @current_speed += 1
  end
  
  def drive		# assigned the increment operator using conditional while loop inside a drive method and calling the accelerate method
  	puts "Ingnition started! vechile moving in a straight path with intial speed of #{@current_speed} "
    while @current_speed < @max_speed
    	accelerate
    end
	sleep(2) 	# for showing of process execution stated some time gap about 2 sec
	puts "Your car #{@brand} Camaro reached it's max speed #{@current_speed} mph and it can't be accelerated more..!"
	end
end

class Camaro < Car # setting the child and parent relationship
    def initialize #method overriding
    super	
    @brand = "Chevy"
    @max_speed = 200
  end
end

camaro_instance = Camaro.new 	# creating an instance of class
camaro_instance.drive 		# calling  drive method using instance variable