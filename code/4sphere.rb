class Sphere
	def initialize(r)
		@radius=r
	end
	def area
		4*(@radius**2)*Math::PI
	end
	def volume
		(4*(@radius**3)*Math::PI)/3
	end
end
class Ball < Sphere
	def initialize(r,c)
		super(r)
		@color=c
	end
end
class MyBall < Ball
	def initialize(r,c,o)
		super(r,c)
		@owner=o
	end
	def show
		puts "@owner=#{@owner}"
	end
end
