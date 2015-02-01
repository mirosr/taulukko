require_relative 'spec_helper'

describe MultiplicationTable do
  let(:described_entity) { MultiplicationTable }

  it 'returns a multiplication table of the given prime numbers' do
    described_entity.make(primes, nil).must_equal table
  end

  context 'when no prime numbers are given' do
    it 'returns an empty string' do
      described_entity.make(nil, nil).must_equal ''
    end
  end

  context 'when an empty prime numbers list is given' do
    it 'returns an empty string' do
      described_entity.make([], nil).must_equal ''
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
