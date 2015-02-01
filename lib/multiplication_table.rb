module MultiplicationTable
  def self.make(primes, decorator)
    return '' if primes.to_a.empty?

    table = multiply_numbers(primes)

    table.reduce('') do |memo, row|
      memo += decorator.format(row, row == table.last)
    end
  end

  private

  def self.multiply_numbers(numbers)
    [].tap do |table|
      numbers.each_with_index do |number, index|
        table << ['-', numbers].flatten if index == 0
        table << multiply_row(numbers, number)
      end
    end
  end

  def self.multiply_row(numbers, multiplier)
    [multiplier] + numbers.map { |number| number * multiplier }
  end
end
