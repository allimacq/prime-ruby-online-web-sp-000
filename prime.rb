def prime?(number)
  ints = (2..100).to_a
  modular = [ ]
  ints.remove(number)
  ints.collect {|x| modular << number % x}
  if number == 2 || number == 3
    return true
  elsif number == 0 || number == 1
    return false
  elsif number < 0
    puts "Be sure to account for negative numbers!"
    return false
  #elsif number.even? == true
    #return false
  else
    if modular.any?(0) == true
      return false
    else
      return true
    end
  end
end