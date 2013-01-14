def binary_fun(num)
  binary_output = ""
   while num >= 1
    binary_output << (num % 2).to_s
    num /= 2
  end
  binary_output.reverse
end

def octal_fun(num)
  binary_output = ""
  
  while num >= 1
    binary_output << (num % 8).to_s
    num /= 8
  end
  binary_output.reverse
end

def base_fun(num, base)
  output = ""
  
  while num >= 1
    output << (num % base).to_s
    num /= base
  end
  output.reverse
end

def octal_super_fun(num)
  binary_version = binary_fun(num)
  binary_version = sets_of_three(binary_version)
  chunks = []
  octal = ""
  num_chunks = binary_version.length / 3

  num_chunks.times do
    chunks << binary_version[-3..-1]
    3.times do
      binary_version.chop!
    end
  end

  chunks.each do |chunk|
    octal << binary_table(chunk)
  end
  octal.reverse
end

def sets_of_three(string)
  newstring = string.reverse
  if newstring.length % 3 == 0
    newstring.reverse
  else
    newstring << "0"
    newstring = newstring.reverse
    sets_of_three(newstring)
  end
end

def binary_table(str)
  binary_table = { "000" => "0",
                   "001" => "1",
                    "010" => "2",
                    "011" => "3",
                    "100" => "4",
                    "101" => "5",
                    "110" => "6",
                    "111" => "7"
                  }
  binary_table[str]
end