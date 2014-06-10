def even_fibs_sum(fibs=[1, 2], max=4_000_000)
  next_fib = fibs.last(2).reduce(:+)
  if next_fib >= max
    return fibs.select(&:even?).reduce(:+)
  else
    even_fibs_sum(fibs << next_fib, max)
  end
end
p even_fibs_sum