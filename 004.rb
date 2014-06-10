def all_products(min, max)
  multipliers = (min..max).to_a
  all_pairs = multipliers.product(multipliers)
  unique_pairs = all_pairs.map(&:sort).uniq
  unique_pairs.map { |pair| pair.reduce(:*) }
end

def palindrome_num?(num)
  digits = num.to_s.chars
  until digits.size <= 1
    return false if digits.shift != digits.pop
  end
  true
end

def largest_pal(min, max)
  sorted_products = all_products(min, max).sort { |a, b| b <=> a}
  sorted_products.find { |product| palindrome_num?(product) }
end

p largest_pal(100, 999)