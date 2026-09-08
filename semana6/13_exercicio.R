# =============================================================================
# Exercício 13 — Valores inválidos (limpeza)
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
# Uma nota válida vai de 0 a 10. Frequência válida vai de 0 a 100.
# Quantos alunos têm nota_p1 > 10 OU frequência > 100?
# Essas linhas deveriam entrar numa média da turma? Por quê?
# -----------------------------------------------------------------------------
# RESPOSTA (escreva o código de lógica abaixo)
# -----------------------------------------------------------------------------


