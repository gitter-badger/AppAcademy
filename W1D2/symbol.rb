def super_print(string, options = {})
  defaults = {
    :times => 1,
    :upcase => false,
    :reverse => false
  }

  options = defaults.merge(options)

  
    if options[:upcase] == true
      string = string.upcase
    end

    if options[:reverse] == true
      string = string.reverse
    end
  
  options[:times].times do
   puts string
 end
end