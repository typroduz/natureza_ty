require_relative '../lib/generator'
require 'rspec'

describe Generator do
  describe 'subs' do
    it 'substitutes all the data on the hash in the template' do
      data = {'NOME' => 'Alecrim', 'QT' => 'cineol', 'CIENTIIFICO' => 'Rosmarinus'}
      templ = '$NOME$ $QT$ ($CIENTIIFICO$)'
      
      expected_result = 'Alecrim cineol (Rosmarinus)'
      generator = Generator.new(data)
      result = generator.subs(templ)
      puts result
      expect(result).to eq(expected_result)
    end

    it 'substitutes all the data on the hash in the templ for two lines' do
      data = {'NOME' => 'Alecrim', 'QT' => 'cineol', 'CIENTIIFICO' => 'Rosmarinus'}
      data2 = {'NOME' => 'pum', 'QT' => 'zin', 'CIENTIIFICO' => 'o'}
      templ = '$NOME$ $QT$ ($CIENTIIFICO$)'
      
      expected_result = 'Alecrim cineol (Rosmarinus)'
      generator = Generator.new(data)
      result = generator.subs(templ)
      puts result
      expect(result).to eq(expected_result)

      expected_result2 = 'pum zin (o)'
      generator2 = Generator.new(data2)
      result2 = generator2.subs(templ)
      puts result2
      expect(result2).to eq(expected_result2)
    end

    it 'if nil, no empty line' do
      data = {'NOME' => 'Alecrim', 'QT' => nil, 'CIENTIIFICO' => 'Rosmarinus'}
      templ = '$NOME$ $QT$ ($CIENTIIFICO$)'
      expected_result = 'Alecrim (Rosmarinus)'
      generator = Generator.new(data)
      result = generator.subs(templ)
      puts result
      expect(result).to eq(expected_result)
    end

    it 'if nil, no empty line' do
      data = {'NOME' => 'Alecrim', 'QT' => 'cineol', 'CIENTIIFICO' => nil}
      templ = '$NOME$ $QT$ ($CIENTIIFICO$)'
      expected_result = 'Alecrim cineol'
      generator = Generator.new(data)
      result = generator.subs(templ)
      puts result
      expect(result).to eq(expected_result)
    end
  end
end