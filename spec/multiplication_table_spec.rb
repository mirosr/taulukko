require_relative 'spec_helper'

describe MultiplicationTable do
  it 'returns a multiplication table of the given prime numbers' do
    output = MultiplicationTable.make(primes, nil)

    output.must_equal table
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
