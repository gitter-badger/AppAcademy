def times_two(array)
  array.map do |i|
    i * 2
  end
end

def my_each(array)
  array.each do 
    yield
  end
end

def median(array)
  if array.length.odd?
    median_location = (array.length + 1) / 2
    array[median_location-1]
  else
    ((array[array.length / 2]).to_f + (array[(array.length / 2) - 1])).to_f / 2
  end
end