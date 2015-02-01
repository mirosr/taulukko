require_relative 'spec_helper'

describe PrimesGenerator do
  it 'responds to .generate' do
    PrimesGenerator.must_respond_to :generate
  end
end
