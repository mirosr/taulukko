require_relative 'spec_helper'

describe AsciiTableDecorator do
  it 'responds to .new' do
    AsciiTableDecorator.must_respond_to :new
  end
end
