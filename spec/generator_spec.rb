require_relative '../lib/generator'
require 'rspec'

describe Generator do
  describe 'subs' do
    it 'substitutes all the data on the hash in the text' do
      data = {'NOME' => 'Alecrim', 'QT' => 'cineol', 'CIENTIIFICO' => 'Rosmarinus'}
      text = '$NOME$ $QT$ ($CIENTIIFICO$)'
      
      expected_result = 'Alecrim cineol (Rosmarinus)'
      generator = Generator.new(data)
      result = generator.subs(text)
      puts result
      expect(result).to eq(expected_result)
    end

    it 'substitutes all the data on the hash in the text for two lines' do
      data = {'NOME' => 'Alecrim', 'QT' => 'cineol', 'CIENTIIFICO' => 'Rosmarinus'}
      data2 = {'NOME' => 'pum', 'QT' => 'zin', 'CIENTIIFICO' => 'o'}
      text = '$NOME$ $QT$ ($CIENTIIFICO$)'
      
      expected_result = 'Alecrim cineol (Rosmarinus)'
      generator = Generator.new(data)
      result = generator.subs(text)
      puts result
      expect(result).to eq(expected_result)

      expected_result2 = 'pum zin (o)'
      generator2 = Generator.new(data2)
      result2 = generator2.subs(text)
      puts result2
      expect(result2).to eq(expected_result2)
    end

    it 'if nil, no empty line' do
      data = {'NOME' => 'Alecrim', 'QT' => nil, 'CIENTIIFICO' => 'Rosmarinus'}
      text = '$NOME$ $QT$ ($CIENTIIFICO$)'
      expected_result = 'Alecrim (Rosmarinus)'
      generator = Generator.new(data)
      result = generator.subs(text)
      puts result
      expect(result).to eq(expected_result)
    end

    it 'if nil, no empty line' do
      data = {'NOME' => 'Alecrim', 'QT' => 'cineol', 'CIENTIIFICO' => nil}
      text = '$NOME$ $QT$ ($CIENTIIFICO$)'
      expected_result = 'Alecrim cineol'
      generator = Generator.new(data)
      result = generator.subs(text)
      puts result
      expect(result).to eq(expected_result)
    end
  end
end