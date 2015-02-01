require_relative 'spec_helper'

describe Application do
  it 'reponds to .run' do
    Application.must_respond_to :run
  end
end
