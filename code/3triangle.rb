class Triangle
	def initialize(a,b,c) @a,@b,@c=a,b,c end
	def sidea; @a end
	def sideb; @b end
	def sidec; @c end

	def test # returns the type of this triangle.
		type=3 # (3) assumes this triangle is scalene, otherwise it classifies it as:
		if(@a==@b)and(@a==@c) then type=1 # (1) equilateral
		elsif(@a==@b)or(@a==@c)or(@b==@c) then type=2 # (2) isosceles
		elsif(@a**2==(@b**2+@c**2))or(@b**2==(@a**2+@c**2))or(@c**2==(@a**2+@b**2)) 
			then type=4 # (4) right
		elsif (@a>=(@b+@c))or(@b>=(@a+@c))or(@c>=(@b+@a)) then type=5 # or (5) invalid.
		end
		return type
	end

end
