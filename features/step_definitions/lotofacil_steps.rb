Dado("que eu estou visitando a página da lotofácil") do
  @lotofacil.load
end

#jogos

Quando("eu busco o {string} do meu jogo na barra de busca") do |jogo|
  @lotofacil.busca(jogo)
end

Quando("verifico se o {string} do concurso é o do meu jogo") do |jogo|
  expect(@lotofacil.numero_concurso).to have_text jogo
end

Então("devo ver o {string} da minha aposta") do |resultado|
  expect(@lotofacil.resultado_jogo).to eql resultado
end

Então("conferir o {string} de quinze acertos") do |premio|
  expect(@lotofacil.quinze_acertos).to have_text premio
end

#arrecadacao

Quando("eu busco o jogo {string}") do |jogo|
  @lotofacil.busca(jogo)
end

Então("eu verifico o valor total arrecadado de cada premiação") do
  log(@lotofacil.quinze_check)
  log(@lotofacil.quatorze_check)
  log(@lotofacil.treze_check)
  log(@lotofacil.doze_check)
  log(@lotofacil.onze_check)
end

#jogo nao encontrado

Quando("eu faço procuro pelo jogo {string}") do |jogo|
  @lotofacil.busca(jogo)
end

Então("não devo ver a mensagem {string}") do |alerta|
  msg = page.driver.browser.switch_to.alert.text
  expect(msg).to eql alerta
end
