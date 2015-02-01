require_relative 'spec_helper'
require 'multiplication_table'
require 'primes_generator'
require 'ascii_table_decorator'

describe Application do
  it 'prints out a multiplication table of the first n prime numbers' do
    output, = capture_io do
      Application.stub(:primes_count, 3) do
        Application.run
      end
    end

    output.must_equal formatted_table
  end

  private

  def formatted_table
    <<EOS
+----+----+----+-----+
|    | 2  | 3  | 5   |
+----+----+----+-----+
| 2  | 4  | 6  | 10  |
+----+----+----+-----+
| 3  | 6  | 9  | 15  |
+----+----+----+-----+
| 5  | 10 | 15 | 25  |
+----+----+----+-----+
EOS
  end
end
