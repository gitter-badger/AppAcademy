class Array
  def two_sum
    self.each do |el1|
      self.each do |el2|
        if el1 + el2 == 0
          return true
          break
        end
      end
    end
    false
  end
end


def new_two_sum(array)
  hash = {}
  array.each do |el|
    hash[el] = true
  end
  
  hash.each do |k,v|
    if hash.has_key?(k * -1)
      return true
      break
    end
  end
  false
end

def big_array
  array = []
  10000.times do
    array << rand(-1000..1000)
  end
  array
end