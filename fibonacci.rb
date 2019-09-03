require 'benchmark'

def iterative_fib(n)
  sequence = []
  count = 0
  while count <= n
    if count == 0
      sequence<<0
    elsif count == 1
      sequence<<1
    else
      new_number = sequence[-1] + sequence[-2]
      sequence<<new_number
    end
    count += 1
  end
  return sequence.last
end

def recursive_fib(n)

end

puts iterative_fib(9)

# num = 35
# Benchmark.bm do |x|
#   x.report("recursive_fib") { recursive_fib(num) }
#   x.report("iterative_fib") { iterative_fib(num) }
# end