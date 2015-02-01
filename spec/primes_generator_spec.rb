require_relative 'spec_helper'

describe PrimesGenerator do
  it 'generates a list of the first n prime numbers' do
    PrimesGenerator.generate(4).must_equal first_4_primes
  end

  private

  def first_4_primes
    [2, 3, 5, 7]
  end
end
