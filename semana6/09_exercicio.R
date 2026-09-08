# =============================================================================
# Exercício 09 — Classificar situação com ifelse
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
# Crie a coluna situacao com a regra (use nota_p1 como nota):
#   frequência < 75              -> Reprovado falta
#   senão, nota_p1 >= 6          -> Aprovado
#   senão                        -> Reprovado nota
#
# Monte table(dados$situacao).
# A lógica trata falta ANTES da nota. Por quê?
# -----------------------------------------------------------------------------
# RESPOSTA (escreva o código de lógica abaixo)
# -----------------------------------------------------------------------------


