class MultiplicationTable
  def self.make(primes, decorator)
    new(primes, decorator).public_send(__method__)
  end

  def initialize(primes, decorator)
    @primes = primes.to_a
    @decorator = decorator
  end

  def make
    return '' if @primes.empty?

    table.reduce('') do |memo, row|
      memo += @decorator.format(row, row == table.last)
    end
  end

  private

  def table
    @table ||= multiply_numbers
  end

  def multiply_numbers
    [].tap do |table|
      @primes.each_with_index do |number, index|
        table << ['-', @primes].flatten if index == 0
        table << multiply_row(@primes, number)
      end
    end
  end

  def multiply_row(numbers, multiplier)
    [multiplier] + numbers.map { |number| number * multiplier }
  end
end
