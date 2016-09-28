require 'byebug'

words = []

puts "Press sentence:"
words = gets.chomp
h = Hash.new(0)
#byebug
n = words.size
words = words.downcase 
i = 0
while i < n 
  h[words[i]] += 1 
  i+=1
end

array = h.values

n = array.size
array = array.sort
puts array.to_s

s=0
i=0
while n > 0 
  s+=array[n-1]*(26-i)
  i+=1
  n-=1
end

puts s