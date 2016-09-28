require 'byebug'

words = []

puts "Press sentence:"
words = gets.chomp
h = Hash.new(0)
#byebug
n = words.size

i = 0
while i < n 
  h[words[i]] += 1 
  i+=1
end

puts h

