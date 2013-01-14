def stock_picker(array)

  best_buy = 0
  best_sell = 0
  best_dif = -1.0/0.0

  array.each_with_index do |price1, i1|
    array[i1..-1].each_with_index do |price2, i2|
      if price2 - price1 > best_dif
        best_dif = price2 - price1
        best_buy = price1
        best_sell = price2
      end
    end
  end

  puts "Buying at $#{best_buy} and selling at $#{best_sell} yields $#{best_dif}"
end

