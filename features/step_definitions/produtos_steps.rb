require 'httparty'
require 'json'
require 'minitest/autorun'

Dado(/^que é feito uma requisição para o endpoint VRPAT$/) do
  #requisição com o get
  @retorno = HTTParty.get('https://portal.vr.com.br/api-web/comum/enumerations/VRPAT')
end

Quando(/^verificar se há a chave "([^"]*)" no retorno$/) do |key|
  #retorno do get, pegar o body, code ou header, colocar em array
  retorno_json = JSON.parse(@retorno.body)
  #verificar no json retornardo se há a chave solicitada.
  assert(retorno_json.key?(key), "Não encontrou a chave #{key}")
end

Então(/^exibo qualquer item aleatório do retorno$/) do
  #pegar todas as chaves do tipo e colocar em um array
  tipo = @retorno.parsed_response['typeOfEstablishment']
  #pegar randomizado (pseudo) um item do array
  randomizar = tipo.sample
  #exibir na tela o que foi selecionado
  puts "Item aleatório: #{randomizar}"
end