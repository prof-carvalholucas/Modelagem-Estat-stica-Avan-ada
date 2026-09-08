# =============================================================================
# Exercício 02 — Comparação: frequência baixa
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
# Quantos alunos têm frequência menor que 75?
#
# -----------------------------------------------------------------------------
# RESPOSTA (escreva o código de lógica abaixo)
# -----------------------------------------------------------------------------
print(sum(dados$frequencia > 7))

