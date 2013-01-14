class Array
  def my_uniq
    new_array = []
    self.each do |el|
      if !new_array.include?(el)
        new_array << el
      end
    end
  
  new_array
  end

end
