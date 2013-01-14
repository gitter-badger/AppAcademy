#Fibonacci recursively
def fib_r(nums)

  if nums == 0
    fibb_array = [0]
  elsif nums == 1
    fibb_array = [0,1]
  else
    fibb_array = fib_r(nums - 1)
    fibb_array << fibb_array[-1] + fibb_array[-2]
  end

  fibb_array
end

#Fibonacci iteratively
def fib_i(nums)

  if nums == 0
    array = [0]
  elsif nums == 1
    array = [1]
  else
    array = [1,1]
  end

  while array.count <= nums
    array << array[-1] + array[-2]
  end

  array
end


def recursive_sum(array, i=0)
  if i == array.count - 1
    array[i]
  else
    puts array[i]
    array[i] + recursiveSum(array, i + 1)
  end
end

def iterative_sum(array)
  sum = 0
  array.each do |x|
    sum += x
  end
  sum
end

def exp1(base, num)
  if num == 1
    base
  else
    exponent = base * exp1(base, num-1)
  end
end

def exp2(base, num)
  if num == 1
    base
  elsif num == 0
    1
  else
    exponent = exp2(base, (num/2.0).floor) * exp2(base, (num/2.0).ceil)
  end
end

def deep_dup(array)
  dup_array = []

  array.each do |element|
    if element.is_a?(Array)
      dup_array << deep_dup(element)
    else
      dup_array << element
    end
  end
  dup_array
end

def bsearch(array, target)
  if array[array.length/2] == target
    puts "found!"
  elsif array.length == 1
    puts "wasn't there, pal."
  elsif target > array[array.length/2]
    array = array[array.length/2..-1]
    bsearch(array, target)
  else
    array = array[0..array.length/2]
    bsearch(array, target)
  end
end

def make_change(amount, coins = [1,5,10,25], purse = [])
  coins = coins.sort
  if amount == 0
    purse
  else
    num_coin = amount / coins[-1]
    amount = amount - (coins[-1]*num_coin)
    num_coin.times { purse << coins[-1] }
    coins = coins[0..-2]
    make_change(amount, coins, purse)
  end
end

