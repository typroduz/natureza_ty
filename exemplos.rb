# Comandos Sublime
#
# ctrl + shift + p = abre o menu pra busca
# ctrl + / = comenta e descomenta
# ctrl + d = vai selecionando os itens iguais pra edição
# f7 = faz o build
# Abrir o menu e procurar por Keybindings pra achar os atalhos existentes

puts 'Hello world!' # uma String simples
puts 'Olá Ty!!!!!!'

nome = 'Debora'
puts  "Olá #{nome}" # uma String com interpolação

puts 1 + 1 # imprime o resultado 2

dados_array = ["la", "bla", "le"] # Array (https://ruby-doc.org/core-2.4.0/Array.html)
puts dados_array[2] # = "le" (terceiro elemento do array)

dados = {'NOME' => 'Alecrim', 'QT' => 'cineol'} # Hash (https://ruby-doc.org/core-2.4.0/Hash.html)
puts dados['NOME'] # = 'Alecrim', que corresponde à chave NOME

endereco = 'Perfil - Empresa onde trabalha: Produty'
puts endereco
novo_endereco = endereco.gsub('Produty', 'Nubank')
puts novo_endereco


def x(a, a1, a2) # Não faça issssoooooooooo! 
  a.gsub(a1, a2)
end

# Método
def substitui(texto, palavra, palavra_nova) # Faça assimmmmmmm! 
  texto.gsub(palavra, palavra_nova)
end

antiga = 'Produty'
nova ='Nubank'
# Chamada de método
puts substitui(endereco, antiga, nova)
puts substitui(endereco, antiga, 'Não te interessa')

# Substituindo dados do hash
dados = {'NOME' => 'Alecrim', 'QT' => 'cineol', 'CIENTIIFICO' => 'Rosmarinus'} # Hash (https://ruby-doc.org/core-2.4.0/Hash.html)
texto = '$NOME$ $QT$ ($CIENTIIFICO$)'
texto1 = texto.gsub('$NOME$', dados['NOME'])
texto2 = texto1.gsub('$QT$', dados['QT'])
texto3 = texto2.gsub('$CIENTIIFICO$', dados['CIENTIIFICO'])
puts texto3

texto1 = texto.gsub('$NOME$', dados['NOME']).gsub('$QT$', dados['QT']).gsub('$CIENTIIFICO$', dados['CIENTIIFICO'])
puts texto1

# Imprimindo dados do array
puts dados_array[0]
puts dados_array[1] # Jeito zuado
puts dados_array[2]

puts 'Agora com o for'
for x in 0..10
  puts dados_array[x] # Assim melhora!
end

# Melhor jeito!
dados_array.each do |abobrinha| # Eram item, mas abobrinha fica mais da hora
  puts abobrinha # Da hora!
end

texto4 = nil
puts texto4.nil?

# Imprimindo dados do hash
dados.each do |chave, valor|
  puts "#{chave} = #{valor}"
end