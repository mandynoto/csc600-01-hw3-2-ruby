class Array
	#  Return true if amin <= a[i] <=amax for all values of i.
	def limited?(amin,amax)
		# Try to disprove the range
		for e in self do return false if amin>e||e>amax end
		return true # implies disapproval failed
	end
	# Return 0,-1,1 depending on how array is sorted.
	def sorted?
		inc,dec=true,true # assumes array is sorted in either direction
		0.upto self.length-2 do |i| # tries to disprove assumption
			inc=false if self[i]>self[i+1]; dec=false if self[i]<self[i+1]
		end
		if inc then 1 elsif dec then -1 else 0 end # concludes assumption
	end
end

a=[2,4,6,8]; b=[1,2,3,1]
print a.limited?(2,4);puts; print a.limited?(1,9);puts
print b.limited?(1,2);puts; print b.limited?(1,3);puts
print [3,2,1,1].sorted?
print [0,0,0].sorted?; print [1,2,3].sorted?
print [3,2,1].sorted?; print [1,2,1].sorted?
