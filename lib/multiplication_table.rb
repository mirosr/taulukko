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

    multiplication_table.reduce('') do |memo, row|
      memo += @decorator.format(row, row == multiplication_table.last)
    end
  end

  private

  def multiplication_table
    @multiplication_table ||= [].tap do |table|
      @primes.each_with_index do |number, index|
        table << ['-', @primes].flatten if index == 0
        table << multiplication_row(@primes, number)
      end
    end
  end

  def multiplication_row(numbers, multiplier)
    [multiplier] + numbers.map { |number| number * multiplier }
  end
end
