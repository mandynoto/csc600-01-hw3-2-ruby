class Sphere
	def initialize(r); @radius=r end
	def area; 4*(@radius**2)*Math::PI end # returns this sphere's area
	def volume; (4*(@radius**3)*Math::PI)/3 end # returns this sphere's volume
end
class Ball < Sphere
	def initialize(r,c); super(r); @color=c end
end
class MyBall < Ball
	def initialize(r,c,o); super(r,c); @owner=o end
	# Show current and inherited instance variables
	def show; print "@radius=#{@radius}\n@color=#{@color}\n@owner=#{@owner}" end
end

mb=MyBall.new(5,"red","jon")
mb.show; puts
print "area=#{mb.area}\nvolume=#{mb.volume}"
