# =============================================================================
# Exercício 14 — Destaques (três condições)
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
# Um destaque é quem tem:
#   média de nota_p1 e nota_p2 >= 8.5
#   E frequência >= 90
#   E status == "Ativo"
#
# Crie a média: dados$media <- rowMeans(dados[, c("nota_p1", "nota_p2")])
# Quantos destaques? Liste nome, curso, media e frequencia.
# -----------------------------------------------------------------------------
# RESPOSTA (escreva o código de lógica abaixo)
# -----------------------------------------------------------------------------


