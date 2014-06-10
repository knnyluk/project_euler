def smallest_div_num
  divisors = 3..20
  num = 2520
  loop do
    return num if divisors.all? { |div| num % div == 0 }
    num += 2
  end
end

p smallest_div_num