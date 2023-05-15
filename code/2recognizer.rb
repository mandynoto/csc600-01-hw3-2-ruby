class Array
	#  Return true if amin <= a[i] <=amax for all values of i.
	def limited?(amin,amax)
		# Try to disprove the range
		for e in self do return false if amin>e||e>amax end
		return true # implies disapproval failed
	end
end
