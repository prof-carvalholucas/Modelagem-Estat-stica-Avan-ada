# =============================================================================
# Exercício 20 — Desafio: calouros em risco
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
# Liste os alunos que são, ao mesmo tempo:
#   status == "Ativo"
#   E periodo <= 3
#   E nota_p1 < 6
#   E horas_estudo <= 4
#
# Quantos são? Quantos em cada curso e em cada cidade?
# Escreva 3 a 5 frases interpretando o que essa regra seleciona.
# -----------------------------------------------------------------------------
# RESPOSTA (escreva o código de lógica abaixo)
# -----------------------------------------------------------------------------


