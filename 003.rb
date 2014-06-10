def factorize(num)
  factors = []
  divisor = 2
  until divisor >= num
    while num % divisor == 0 
      factors.unshift(divisor)
      num /= divisor
    end
    divisor += 1
  end
  factors.unshift(num) 
end

def prime?(num)
  if num < 1
    false
  elsif num.between?(2,3)
    true
  else
    (2..num / 2).none? { |divisor| num % divisor == 0 }
  end
end

def largest_prime_factor(num)
  factors = factorize(num)
  factors.find { |factor| prime?(factor) }
end

p largest_prime_factor(600851475143)