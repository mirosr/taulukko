require_relative 'spec_helper'

describe PrimesGenerator do
  let(:described_entity) { PrimesGenerator }

  it 'generates a list of the first n prime numbers' do
    described_entity.generate(4).must_equal first_4_primes
  end

  context 'when no count is given' do
    it 'returns an empty list' do
      described_entity.generate(nil).must_equal []
    end
  end

  context 'when a zero count is given' do
    it 'returns an empty list' do
      described_entity.generate(0).must_equal []
    end
  end

  context 'when a negative count is given' do
    it 'returns an empty list' do
      described_entity.generate(-1).must_equal []
    end
  end

  private

  def first_4_primes
    [2, 3, 5, 7]
  end
end
