require_relative 'spec_helper'

describe MultiplicationTable do
  it 'returns a multiplication table of the given prime numbers' do
    output = MultiplicationTable.make(primes, nil)

    output.must_equal table
  end

  context 'when no prime numbers are given' do
    it 'returns an empty string' do
      MultiplicationTable.make(nil, nil).must_equal ''
    end
  end

  context 'when an empty prime numbers list is given' do
    it 'returns an empty string' do
      MultiplicationTable.make([], nil).must_equal ''
    end
  end

  private

  def primes
    [3, 5, 7]
  end

  def table
'- 3 5 7
3 9 15 21
5 15 25 35
7 21 35 49'
  end
end
