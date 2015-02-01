require_relative 'spec_helper'

describe MultiplicationTable do
  it 'responds to .make' do
    MultiplicationTable.must_respond_to :make
  end
end
