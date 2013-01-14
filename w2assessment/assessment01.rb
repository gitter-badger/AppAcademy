#Works. 
def factors(num)
  i = 1
  factors = []
  while i <= num
    if num % i == 0
      factors << i
    end
    i+=1
  end
  factors
end

def fibs_rec(num)
  if num == 1
    num_array = [0]
  elsif num == 2
    num_array = [0,1]
  else
    num_array = fibs_rec(num - 1)
    num_array << num_array[-1] + num_array[-2]
  end

  num_array
end

class Array
  #this worked, but I had to recode it to call self... getting there...
  def bubble_sort
    sorted = false
    new_array = self.dup
    if new_array.length == 0
      new_array
    elsif new_array.length == 1
      new_array
    else
      while sorted == false
        sorted = true
          i = 0
        (new_array.length - 1).times do
          if new_array[i] > new_array[i + 1]
            new_array[i], new_array[i + 1] = new_array[i + 1], new_array[i]
            sorted = false
          end
          i += 1
        end
      end
    end
    new_array
  end

def two_sum
  array = self
  return_array = []
  array.each_with_index do |num1, i1|
    array.each_with_index do |num2, i2|
      if num1 == (num2 * -1) && i1 < i2
        return_array << [i1, i2]
      end
    end
  end
  return_array
end


end

def sub_words
end

