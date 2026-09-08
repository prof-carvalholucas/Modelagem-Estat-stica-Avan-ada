# =============================================================================
# Exercício 01 — Comparação: nota_p1 >= 6
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
# Quantos alunos têm nota_p1 maior ou igual a 6?
# Ignore os NA (use na.rm = TRUE no sum, ou !is.na).
# Quantos ficaram de fora porque nota_p1 é NA?
#
# -----------------------------------------------------------------------------
# RESPOSTA (escreva o código de lógica abaixo)
# -----------------------------------------------------------------------------


