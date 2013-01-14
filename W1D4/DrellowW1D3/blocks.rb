class Array

  def my_map(&blk)
    array = []
    i = 0
      while i < self.count
        array << blk.call(self[i])
        i += 1
      end
  array
  end

  def my_each(&blk)
    i = 0
      while i < self.count
        blk.call(self[i])
        i+=1
      end
  end

  def my_inject(result, &blk)
    i = 0
      while i < self.count
        result = blk.call(result, self[i])
        i+=1
      end
      result
  end

  def my_select(&blk)
    array = []
    i = 0
      while i < self.count
        if blk.call(self[i])
          array << (self[i])
        end
        i += 1
      end
    array
  end

  #This sort method uses recursion
  def my_sort(&blk)
    isdif = false
    numbers = self

    numbers[0...-1].each_with_index do |val,i|
      if blk.call(numbers[i], numbers[i+1]) == 1
        numbers[i], numbers[i + 1] = numbers[i + 1], numbers[i]
        isdif = true
      end
    end

    numbers.my_sort(&blk) if isdif

    numbers
  end

  #Then I wrote it again using a while loop :)
  def my_sort2(&blk)
    numbers = self
    isdif = true

    while isdif == true
      isdif = false
      numbers[0...-1].each_with_index do |val,i|
        if blk.call(numbers[i], numbers[i+1]) == 1
          numbers[i], numbers[i + 1] = numbers[i + 1], numbers[i]
          isdif = true
        end
      end
    end

    numbers
  end

end

def args_and_block(argument1, argument2, &blk)
    if !block_given?
      puts "NO BLOCK GIVEN"
    else
    blk.call(argument1, argument2)
    end
end
