class Array

  def my_uniq
    res =[]
    self.each {|el| res << el unless res.include?(el)}
    res.uniq #passes
    #self.uniq #doesnt pass
  end

  def two_sum
    res = []
    self.each_with_index do |el1, idx1|
      self.each_with_index do |el2, idx2|
        res << [idx1, idx2] if el1 + el2 == 0 && idx1 < idx2

      end
    end
    res
  end

  def my_transpose
    return self if self.empty?
    new_array = Array.new(self[0].length) {Array.new(self.length)}
    self.each_with_index do |row, y|
      row.each_with_index do |el, x|
        new_array[x][y] = el
      end
    end

    new_array
  end

  def stock_picker
    return nil if self.length < 2
    last = self.length-1
    highest_profit = 0
    dates = []
    (0...last).each do |index1|
      (index1+1..last).each do |index2|
        profit = self[index2] - self[index1]
        if profit > highest_profit
          highest_profit = profit
          dates = [index1, index2]
        end
      end
    end
    dates
  end

end
