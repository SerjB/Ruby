require 'byebug'

ed = ["","один","два","три","четыре","пять","шесть","семь","восемь","девять","десять","одиннадцать","двенадцать","тринадцать","четырнадцать","пятнадцать","шестнадцать","семнадцать","восемнадцать","девятнадцать"]
des = ["","десять","двадцать","тридцать","сорок","пятьдесят","шестьдесят","семдесят","восемьдесят","девяносто"]
sot = ["","сто","двести","триста","четыреста","пяьсот","шестьсот","семьсот","восемьсот","девятьсот","тысяча"]
k=1
s=0
1000.times do
  i=k
  numb=""
  numb += sot[i/100]
  i %=100
  if i >= 20
    numb += des[i/10]
    i %=10
    numb += ed[i]
  else 
   numb +=ed[i]
  end
  # byebug
  s += numb.size
  k+=1
end

puts s