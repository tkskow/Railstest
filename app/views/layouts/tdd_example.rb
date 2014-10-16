class Car
	def initialize(latitude = 0, longitude = 0)
		@latitude = latitude
		@longitude = longitude
		@orientation = :north
	end

	def get_latitude
		@latitude
	end

	def get_longitude
		@longitude
	end

	def get_orientation
		@orientation
	end

	def set_orientation(orientation)
		@orientation = orientation
	end

	def move(distance)
		if orientation == :south
			@latitude = @latitude - distance
		elsif orientation == :north
			@latitude = @latitude + distance
			
	end

end

class CarTest
	def test_make_a_new_car
		car = Car.new
		assert_equal car.class, Car
	end

	def test_we_can_get_the_latitude
		car = Car.new(6)
		assert_equal car.get_latitude, Fixnum
		assert_equal car.get_latitude, 6
		
	end
	
	def test_we_can_get_the_longitude
		car = Car.new(5,8)
		assert_equal car.get_longitude, Fixnum
		assert_equal car.get_longitude, 8
		
	end

	def test_the_default_orientation_is_north
		car = Car.new
		#assert_equal car.get_orientation, String
		assert_equal car.get_orientation, :north
		
	end

	def test_the_default_orientation_is_setable
		car = Car.new
		#assert_equal car.get_orientation, String
		assert_equal car.get_orientation, :south
		
	end

	def test_the_car_can_move_south
		car = Car.new
		initial_latitude = car.get_latitude
		car.set_orientation (:south)
		car.move(5)
		assert_equal car.get_latitude, initial_latitude-5
	end

	def test_the_car_can_move_north
		car = Car.new
		initial_latitude = car.get_latitude
		car.set_orientation (:north)
		car.move(5)
		assert_equal car.get_latitude, initial_latitude + 5
	end
end