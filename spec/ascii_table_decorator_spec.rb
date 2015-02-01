require_relative 'spec_helper'

describe AsciiTableDecorator do
  let(:described_entity) { AsciiTableDecorator.new }

  it 'formats the given columns with ASCII symbols' do
    described_entity.format([1, 2, 3], false).must_equal formatted_row
  end

  context 'when the given columns are in the last row' do
    it 'closes the table' do
      described_entity.format([1, 11, 111], true).must_equal formatted_row_last
    end
  end

  context 'when no columns are given' do
    it 'returns an empty string' do
      described_entity.format(nil, false).must_equal ''
    end
  end

  context 'when an empty column list is given' do
    it 'returns an empty string' do
      described_entity.format([], false).must_equal ''
    end
  end

  private

  def formatted_row
    <<EOS
+-----+-----+-----+
|  1  |  2  |  3  |
EOS
  end

  def formatted_row_last
    <<EOS
+-----+-----+-----+
|  1  | 11  | 111 |
+-----+-----+-----+
EOS
  end
end
