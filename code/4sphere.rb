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
	def initialize(c)
		@color=c
	end
end
class MyBall < Ball
	def initialize(o)
		@owner=o
	end
end
