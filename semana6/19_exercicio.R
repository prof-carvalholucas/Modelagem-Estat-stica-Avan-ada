# =============================================================================
# Exercício 19 — Cidade OU cidade, mais presencial e média
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
# Quantos alunos:
#   moram em Anapolis OU Goiania
#   E modalidade == "Presencial"
#   E média (nota_p1 e nota_p2) >= 7 ?
#
# Quantos de cada curso nesse recorte?
# -----------------------------------------------------------------------------
# RESPOSTA (escreva o código de lógica abaixo)
# -----------------------------------------------------------------------------


