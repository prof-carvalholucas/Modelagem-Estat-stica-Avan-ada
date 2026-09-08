# =============================================================================
# Exercício 17 — Prioridade de tutoria (E e OU compostos)
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
# Um aluno é prioridade de tutoria se:
#   (média < 6 E horas_estudo < 5)
#   OU
#   (frequência < 75 E periodo <= 2)
#
# Quantos são? Quantos de cada curso?
# -----------------------------------------------------------------------------
# RESPOSTA (escreva o código de lógica abaixo)
# -----------------------------------------------------------------------------


