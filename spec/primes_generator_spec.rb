require_relative 'spec_helper'

describe PrimesGenerator do
  it 'generates a list of the first n prime numbers' do
    PrimesGenerator.generate(4).must_equal first_4_primes
  end

  context 'when no count is given' do
    it 'returns an empty list' do
      PrimesGenerator.generate(nil).must_equal []
    end
  end

  context 'when a zero count is given' do
    it 'returns an empty list' do
      PrimesGenerator.generate(0).must_equal []
    end
  end

  context 'when a negative count is given' do
    it 'returns an empty list' do
      PrimesGenerator.generate(-1).must_equal []
    end
  end

  private

  def first_4_primes
    [2, 3, 5, 7]
  end
end
