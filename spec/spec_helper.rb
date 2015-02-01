require 'minitest/autorun'

if __FILE__ == $0
  $LOAD_PATH.unshift('lib', 'spec')
  Dir.glob('./spec/**/*_spec.rb') { |file| require file }
end
