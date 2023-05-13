i=4; # initializes an empty integer for counting
names=["john","peter","job"] # initializes an array of names
abbreviations={a:"alpha", b:"beta", c:"charlie"} # is a hash of abbreviations

print"while:\t\t"    ; print "#{i-=1}" while i>1 # counts down from 3 to 1
print"\nuntil:\t\t"  ; until i>3 ;print i ; i+=1 end# counts up to 3
print"\nfor:\t\t"    ; for name in names; print"#{name} " end
print"\nupto:\t\t"   ; 4.upto(7){|n|print n}
print"\ndownto:\t\t" ; 7.downto(4){|n|print n}
print"\ntimes:\t\t"  ; 3.times{|n|print "thanks "}
