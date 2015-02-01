module PrimesGenerator
  def self.generate(count)
    return [] if count.to_i <= 0

    [].tap do |primes|
      number = 2
      while primes.count < count
        primes << number if prime?(number)
        number += 1
      end
    end
  end

  private

  def self.prime?(number)
    return number == 2 if number % 2 == 0

    (3..Math.sqrt(number)).step(2) do |x|
      return false if number % x == 0
    end
  end
end
