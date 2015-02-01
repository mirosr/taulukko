require_relative 'spec_helper'

describe AsciiTableDecorator do
  let(:described_entity) { AsciiTableDecorator.new }

  it 'formats the given row with ASCII symbols' do
    described_entity.format([1, 2, 3], false).must_equal formatted_row
  end

  context 'when the given row is last' do
    it 'closes the table' do
      described_entity.format([1, 11, 111], true).must_equal formatted_row_last
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
