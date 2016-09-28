array = (1..20).to_a

puts array.to_s

def lcm(a, b)
  m = a * b
  if a > b
    a -= b
  else
    b -= a
  end while a != b
  a = m / a
  a
end

i = 0
until i == 19
  array[i+1] = lcm(array[i], array[i+1])
  i +=1
end


puts array[-1]