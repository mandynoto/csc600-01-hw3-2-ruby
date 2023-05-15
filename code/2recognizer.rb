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
