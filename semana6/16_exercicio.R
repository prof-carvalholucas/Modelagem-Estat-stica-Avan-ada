# =============================================================================
# Exercício 16 — Aprovados por curso
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
# Use a regra de aprovação: nota_p1 >= 6 E frequência >= 75.
# Quantos aprovados há em CADA curso?
#
# -----------------------------------------------------------------------------
# RESPOSTA (escreva o código de lógica abaixo)
# -----------------------------------------------------------------------------


