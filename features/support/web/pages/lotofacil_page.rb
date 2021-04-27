class LotoFacil < SitePrism::Page
  include Capybara::DSL

  element :jogoNumero, "#buscaConcurso"
  element :numeroConcurso, ".title-bar span.ng-binding"
  element :resultadoJogo, "ul.lotofacil"
  element :premioQuinzeacertos, :xpath, "/html/body/div[1]/div/div[3]/div/div[2]/div[1]/div[3]/section/div[2]/div[2]/div/div/div[3]/div/p[1]"
  element :quinzeAcertos, :xpath, "//*/div[3]/div[2]/p[1]/span"
  element :quatorzeAcertos, :xpath, "//*/div[3]/div[2]/p[2]/span"
  element :trezeAcertos, :xpath, "//*/div[3]/div[2]/p[3]/span"
  element :dozeAcertos, :xpath, "//*/div[3]/div[2]/p[4]/span"
  element :onzeAcertos, :xpath, "//*/div[3]/div[2]/p[5]/span"

  def load
    visit "/wps/portal/loterias/landing/lotofacil"
  end

  def busca(jogo)
    jogoNumero.send_keys jogo, :enter
    sleep 1
  end

  def numero_concurso
    numeroConcurso.text
  end

  def resultado_jogo
    resultadoJogo.text
  end

  def quinze_acertos
    premioQuinzeacertos.text
  end

  def quinze_check
    total_premiacao_frase = quinzeAcertos.text.split
    numeros = total_premiacao_frase.select { |numeros| numeros.to_f >= 1 }
    total = numeros[0].gsub(/[.,]/, "." => "", "," => ".").to_f * numeros[1].gsub(/[.,]/, "." => "", "," => ".").to_f
    resultado_formatado = "Quinze acertos total---- R$: " + sprintf("%.2f", total).reverse.gsub(/(\d{3})(?=\d)/, "\\1,").reverse.gsub(/[.,]/, "." => ",", "," => ".")
  end

  def quatorze_check
    total_premiacao_frase = quatorzeAcertos.text.split
    numeros = total_premiacao_frase.select { |numeros| numeros.to_f >= 1 }
    total = numeros[0].gsub(/[.,]/, "." => "", "," => ".").to_f * numeros[1].gsub(/[.,]/, "." => "", "," => ".").to_f
    resultado_formatado = "Quatorze acertos total-- R$: " + sprintf("%.2f", total).reverse.gsub(/(\d{3})(?=\d)/, "\\1,").reverse.gsub(/[.,]/, "." => ",", "," => ".")
  end

  def treze_check
    total_premiacao_frase = trezeAcertos.text.split
    numeros = total_premiacao_frase.select { |numeros| numeros.to_f >= 1 }
    total = numeros[0].gsub(/[.,]/, "." => "", "," => ".").to_f * numeros[1].gsub(/[.,]/, "." => "", "," => ".").to_f
    resultado_formatado = "Treze acertos total----- R$: " + sprintf("%.2f", total).reverse.gsub(/(\d{3})(?=\d)/, "\\1,").reverse.gsub(/[.,]/, "." => ",", "," => ".")
  end

  def doze_check
    total_premiacao_frase = dozeAcertos.text.split
    numeros = total_premiacao_frase.select { |numeros| numeros.to_f >= 1 }
    total = numeros[0].gsub(/[.,]/, "." => "", "," => ".").to_f * numeros[1].gsub(/[.,]/, "." => "", "," => ".").to_f
    resultado_formatado = "Doze acertos total------ R$: " + sprintf("%.2f", total).reverse.gsub(/(\d{3})(?=\d)/, "\\1,").reverse.gsub(/[.,]/, "." => ",", "," => ".")
  end

  def onze_check
    total_premiacao_frase = onzeAcertos.text.split
    numeros = total_premiacao_frase.select { |numeros| numeros.to_f >= 1 }
    total = numeros[0].gsub(/[.,]/, "." => "", "," => ".").to_f * numeros[1].gsub(/[.,]/, "." => "", "," => ".").to_f
    resultado_formatado = "Onze acertos total------ R$: " + sprintf("%.2f", total).reverse.gsub(/(\d{3})(?=\d)/, "\\1,").reverse.gsub(/[.,]/, "." => ",", "," => ".")
  end

  def verificador_premio
    @premio = resultadoJogo.text.split
  end

  def meu_jogo(meu_jogo)
    meu_jogo.split
  end
end
