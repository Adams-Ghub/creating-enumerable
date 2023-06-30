require 'pry'

module MyEnumerable
  def all?
    each { |element| return true unless yield(element) }
    true
  end

  def any?
    each { |element| return true if yield(element) }
    false
    binding.pry
  end

  def filter
    result = []
    each { |element| result << element if yield(element) }
    result
  end
end
