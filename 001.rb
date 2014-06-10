#solution 1
# def sum_div_nums(max=1000)
#   (1...max).select { |num| num % 5 == 0 || num % 3 == 0 }.reduce(:+)
# end
# p sum_div_nums

#solution 2
class Integer # I know I probably shouldn't do this for code in an actual app
  def divisible_by_3_or_5? 
    self % 5 == 0 || self % 3 == 0
  end
end

def sum_div_nums(max=1000)
  (1...max).select(&:divisible_by_3_or_5?).reduce(:+) # but I like how it makes this line cleaner
end
p sum_div_nums
