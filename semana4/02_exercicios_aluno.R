# =============================================================================
# Exercícios do aluno
#
# Como usar:
#   1. Rode 01_preparar_dados.R   (cria dados_limpos)
#   2. Source este arquivo
#   3. No Console:  responder_pergunta_1(dados_limpos)
#                   responder_pergunta_2(dados_limpos)
#                   responder_pergunta_3(dados_limpos)
#                   responder_pergunta_4(dados_limpos)
# =============================================================================

if (!exists("dados_limpos")) {
  source("01_preparar_dados.R", encoding = "UTF-8")
}

pacotes <- c("dplyr", "ggplot2")
ainda_nao <- pacotes[!(pacotes %in% rownames(installed.packages()))]
if (length(ainda_nao) > 0) {
  install.packages(ainda_nao)
}

library(dplyr)
library(ggplot2)

# -----------------------------------------------------------------------------
# PERGUNTA 1 — Perfil da base (sem gráfico)
# Quantas linhas? Quantos estados, municípios e CNES?
# Qual o período? Qual % de boletins com UTI COVID = 0?
# -----------------------------------------------------------------------------

responder_pergunta_1 <- function(dados) {

  # Quantas linhas (boletins) a tabela tem?
  n_linhas <- nrow(dados)

  # Quantos estados diferentes?  (TODO: faça o mesmo para municipio e cnes)
  n_estados <- length(unique(dados$estado))
  n_municipios <- NA
  n_cnes <- NA

  # Primeira e última data  (TODO)
  data_min <- NA
  data_max <- NA

  # Porcentagem de boletins com ocupacaoCovidUti igual a zero  (TODO)
  # Dica: mean(dados$ocupacaoCovidUti == 0, na.rm = TRUE) * 100
  pct_zero <- NA

  cat("\n--- Resposta da pergunta 1 ---\n")
  cat("Linhas:", n_linhas, "\n")
  cat("Estados:", n_estados, "\n")
  cat("Municípios:", n_municipios, "\n")
  cat("CNES:", n_cnes, "\n")
  cat("Período:", as.character(data_min), "a", as.character(data_max), "\n")
  cat("% com UTI COVID = 0:", pct_zero, "\n")
  cat("Interpretação: escreva 2 frases aqui.\n")
}

# -----------------------------------------------------------------------------
# PERGUNTA 2 — Gráfico de barras
# Entre os 10 estados com MAIS boletins, quem tem a MAIOR média de UTI COVID?
# -----------------------------------------------------------------------------

responder_pergunta_2 <- function(dados) {

  # Passo 1: contar quantos boletins cada estado tem (já vem do maior para o menor)
  contagem <- dados %>%
    count(estado, sort = TRUE)

  # Passo 2: ficar só com os 10 primeiros
  top10 <- head(contagem, 10)
  print(top10)

  # Passo 3: média de ocupacaoCovidUti nesses 10 estados  (TODO: complete o mean)
  resumo <- dados %>%
    filter(estado %in% top10$estado) %>%
    group_by(estado) %>%
    summarise(
      media_uti = NA,   # TODO: mean(ocupacaoCovidUti, na.rm = TRUE)
      .groups = "drop"
    )

  print(resumo)

  # Passo 4: gráfico de barras  (TODO: troque NULL pelo ggplot)
  # Molde:
  # ggplot(resumo, aes(x = reorder(estado, media_uti), y = media_uti)) +
  #   geom_col(fill = "steelblue") +
  #   coord_flip() +
  #   labs(title = "Média UTI COVID — 10 estados com mais boletins",
  #        x = "Estado", y = "Média de leitos") +
  #   theme_minimal()
  grafico <- NULL

  if (!is.null(grafico)) {
    print(grafico)
  }

  cat("\n--- Resposta da pergunta 2 ---\n")
  cat("Maior média: ?\n")
  cat("Mais boletins: ?\n")
  cat("Interpretação: volume de registros não é a mesma coisa que ocupação média.\n")
}

# -----------------------------------------------------------------------------
# PERGUNTA 3 — Gráfico de linha
# Em que mês a ocupação COVID foi mais alta? O que acontece depois de março?
# -----------------------------------------------------------------------------

responder_pergunta_3 <- function(dados) {

  # Passo 1: criar a coluna mes e calcular as duas médias  (TODO: complete os mean)
  mensal <- dados %>%
    mutate(mes = as.Date(cut(data, "month"))) %>%
    group_by(mes) %>%
    summarise(
      media_uti = NA,   # TODO: mean(ocupacaoCovidUti, na.rm = TRUE)
      media_cli = NA,   # TODO: mean(ocupacaoCovidCli, na.rm = TRUE)
      .groups = "drop"
    )

  print(mensal)

  # Passo 2: gráfico de linha  (TODO: troque NULL pelo ggplot)
  # Molde:
  # ggplot(mensal, aes(x = mes)) +
  #   geom_line(aes(y = media_uti, color = "UTI COVID")) +
  #   geom_point(aes(y = media_uti, color = "UTI COVID")) +
  #   geom_line(aes(y = media_cli, color = "Clínico COVID")) +
  #   geom_point(aes(y = media_cli, color = "Clínico COVID")) +
  #   labs(title = "Ocupação média COVID no Brasil — 2022",
  #        x = "Mês", y = "Média de leitos", color = "Tipo") +
  #   theme_minimal()
  grafico <- NULL

  if (!is.null(grafico)) {
    print(grafico)
  }

  cat("\n--- Resposta da pergunta 3 ---\n")
  cat("Mês de pico: ?\n")
  cat("Depois de março: ?\n")
  cat("Interpretação: relacione com a onda Ômicron (início de 2022).\n")
}

# -----------------------------------------------------------------------------
# PERGUNTA 4 — Brasil × Goiás × Anápolis (sem gráfico)
# Compare média UTI COVID, média UTI hospitalar e % de zeros.
# -----------------------------------------------------------------------------

# Função pequena que resume UM recorte (Brasil, ou Goiás, ou Anápolis)
resumir_lugar <- function(dados, nome) {
  data.frame(
    local = nome,
    n = nrow(dados),
    media_uti_covid = mean(dados$ocupacaoCovidUti, na.rm = TRUE),
    media_uti_hosp  = NA,   # TODO: mean(dados$ocupacaoHospitalarUti, na.rm = TRUE)
    pct_zero        = NA    # TODO: 100 * mean(dados$ocupacaoCovidUti == 0, na.rm = TRUE)
  )
}

responder_pergunta_4 <- function(dados) {

  # Recorte de Goiás e de Anápolis
  goias    <- dados %>% filter(estado == "Goiás")
  anapolis <- dados %>% filter(municipio == "Anápolis")

  # Uma linha para cada lugar
  brasil_n   <- resumir_lugar(dados, "Brasil")
  goias_n    <- resumir_lugar(goias, "Goiás")
  anapolis_n <- resumir_lugar(anapolis, "Anápolis")

  # Junta as 3 linhas numa tabela
  comparacao <- rbind(brasil_n, goias_n, anapolis_n)
  print(comparacao)

  cat("\n--- Resposta da pergunta 4 ---\n")
  cat("Interpretação: compare Anápolis com Goiás (polo regional).\n")
}

# -----------------------------------------------------------------------------
# CHAME as funções no Console (uma de cada vez):
#
# responder_pergunta_1(dados_limpos)
# responder_pergunta_2(dados_limpos)
# responder_pergunta_3(dados_limpos)
# responder_pergunta_4(dados_limpos)
# -----------------------------------------------------------------------------

cat("\nFunções criadas. Agora rode no Console, uma pergunta por vez:\n")
cat("  responder_pergunta_1(dados_limpos)\n")
cat("  responder_pergunta_2(dados_limpos)\n")
cat("  responder_pergunta_3(dados_limpos)\n")
cat("  responder_pergunta_4(dados_limpos)\n")
