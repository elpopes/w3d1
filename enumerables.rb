class Array
  def my_each(&blc)
    i = 0
    while i < self.length
      blc.call(self[i])
      i += 1
    end
    self
  end

  def my_select(&blc)
    i = 0
    results = []
    while i < self.length
      if blc.call(self[i])
        results << self[i]
      end
      i += 1
    end
    results
  end

  def my_reject(&blc)
    i = 0
    results = []
    while i < self.length
      if !blc.call(self[i])
        results << self[i]
      end
      i += 1
    end
    results
  end

  def my_any?(&blc)
    i = 0

    while i < self.length
      if blc.call(self[i])
        return true
      end
      i += 1
    end
    false
  end

  def my_all?(&blc)
    i = 0

    while i < self.length
      if !blc.call(self[i])
        return false
      end
      i += 1
    end
    true
  end

  def my_flatten
    return [] if self.nil?
    [self[0]] + self[1..-1].my_flatten
  end

  #   def my_function(arr)
  #     self.each do |ele|
  #       if ele.is_a?(Array)
  #         ele.my_flatten
  #       else
  #         result += [ele]
  #       end
  #     end
  #     result
  #   end
end

# a = [1, 2, 3]
# p a.my_select { |num| num > 1 } # => [2, 3]
# p a.my_select { |num| num == 4 } # => []

# a = [1, 2, 3]
# p a.my_reject { |num| num > 1 } # => [1]
# p a.my_reject { |num| num == 4 } # => [1, 2, 3]

# a = [1, 2, 3]
# p a.my_any? { |num| num > 1 } # => true
# p a.my_any? { |num| num == 4 } # => false
# p a.my_all? { |num| num > 1 } # => false
# p a.my_all? { |num| num < 4 } # => true

p [1, 2, 3, [4, [5, 6]], [[[7]], 8]].my_flatten # => [1, 2, 3, 4, 5, 6, 7, 8]
