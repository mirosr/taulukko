module Application
  def self.run
    puts MultiplicationTable.make(primes, ascii_table)
  end

  private

  def self.primes
    PrimesGenerator.generate(primes_count)
  end

  def self.ascii_table
    AsciiTableDecorator.new
  end

  def self.primes_count
    10
  end
end
