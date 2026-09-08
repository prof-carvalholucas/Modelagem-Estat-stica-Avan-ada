# =============================================================================
# Exercício 10 — Conceito com ifelse aninhado
# Semana 6 · Lógica com CSV · UniEVANGÉLICA · 2026.2
# =============================================================================

arquivo <- file.path("dados", "alunos.csv")

dados <- read.csv(
  arquivo,
  fileEncoding = "UTF-8",
  stringsAsFactors = FALSE,
  na.strings = c("", "NA")
)

# -----------------------------------------------------------------------------
# ENUNCIADO
# Crie a coluna conceito a partir de nota_p1:
#   >= 9 -> A
#   >= 7 -> B
#   >= 6 -> C
#   demais -> D
#
# Mostre table(dados$conceito).
# -----------------------------------------------------------------------------
# RESPOSTA (escreva o código de lógica abaixo)
# -----------------------------------------------------------------------------


