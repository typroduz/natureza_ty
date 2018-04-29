require_relative '../lib/generator'

  # def initialize(db)
  #   @db = db
  # end

db_array = [ 
  "{'NOME' => 'Alecrim', 'QT' => 'cineol', 'CIENTIIFICO' => 'Rosmarinus'}", 
  "{'NOME' => 'Pum', 'QT' => 'zin', 'CIENTIIFICO' => 'o'}"]


  dba = db_array.each do |page|
          puts page
        end

  text = '$NOME$ $QT$ ($CIENTIIFICO$)'
  generator = Generator.new(db_array)
  result = generator.subs(text)
  return text
  puts result

