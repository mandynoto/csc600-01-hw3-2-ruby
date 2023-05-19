class Triangle
	def initialize(a,b,c) @a,@b,@c=a,b,c end # is the initializer.
	def sidea; @a end; def sideb; @b end; def sidec; @c end # are setters.
	def sidea=(a); @a=a end; def sideb=(b); @b=b end; def sideb=(c); @c=c end # are getters.

	def test # returns the type of this triangle.
		type=3 # (3) assumes this triangle is scalene, otherwise it classifies it as:
		if(@a==@b)and(@a==@c) then type=1 # (1) equilateral,
		elsif(@a==@b)or(@a==@c)or(@b==@c) then type=2 # (2) isosceles,
		elsif(@a**2==(@b**2+@c**2))or(@b**2==(@a**2+@c**2))or(@c**2==(@a**2+@b**2)) 
			then type=4 # (4) right,
		elsif (@a>=(@b+@c))or(@b>=(@a+@c))or(@c>=(@b+@a)) then type=5 # or (5) invalid.
		end
		return type
	end

	def perimeter # returns the sum of all sides of this triangle.
		false if self.test==5;
		@a+@b+@c
	end

	def area; # returns calculated area of this triangle with heron's formula.
		false if self.test==5; s=self.perimeter/2.to_f
		Math.sqrt s*((s-@a)*(s-@b)*(s-@c))
	end

	def pp; print"(#{@a},#{@b},#{@c})" end # prints all sides of this triangle.
end

t1=Triangle.new(3,3,3); t2=Triangle.new(7,7,4); t3=Triangle.new(7,12,15)
t4=Triangle.new(3,4,5); t5=Triangle.new(3,6,2)
puts "#{t1.pp}\t  test=#{t1.test}"; puts "#{t2.pp}\t  test=#{t2.test}"
puts "#{t3.pp} test=#{t3.test}"; puts "#{t4.pp}\t  test=#{t4.test}"
puts "#{t5.pp}   test=#{t5.test}"
puts "#{t1.pp} perimeter=#{t1.perimeter} area=#{t1.area}"
puts "#{t2.pp} perimeter=#{t2.perimeter} area=#{t2.area}"
print "#{t1.pp}=>"; t1.sidea=5; print"#{t1.pp}:"
print "perimeter=#{t1.perimeter} area=#{t1.area}\n"
print "#{t2.pp}=>"; t2.sideb=9; print"#{t2.pp}:"
print "perimeter=#{t2.perimeter} area=#{t2.area}\n"
