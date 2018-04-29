require_relative '../lib/liniker'
require 'rspec'

describe Liniker do
  it 'input data on the generator' do
      expected_result = 'Alecrim cineol (Rosmarinus)'
      result = liniker.method(text)
      puts result
      expect(result).to eq(expected_result)
    end
  end
end