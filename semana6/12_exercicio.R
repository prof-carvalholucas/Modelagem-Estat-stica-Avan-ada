# =============================================================================
# Exercício 12 — Valores ausentes (NA)
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
# Quantas linhas têm NA em nota_p1 OU em nota_p2?
# Quantos NA em cada coluna?
#
# -----------------------------------------------------------------------------
# RESPOSTA (escreva o código de lógica abaixo)
# -----------------------------------------------------------------------------


