# =============================================================================
# Questão 4 — Executando ANOVA
# Semana 5 · Modelagem Estatística Avançada · UniEVANGÉLICA · 2026.2
# =============================================================================

if (!exists("dados")) {
  source("00_dados.R", encoding = "UTF-8")
}

cat("\n========== QUESTÃO 4 — ANOVA ==========\n")

modelo_anova <- aov(
  nota ~ metodo,
  data = dados
)

print(summary(modelo_anova))

# -----------------------------------------------------------------------------
# Analise o resultado apresentado pelo R.
# a) Qual foi o valor da estatística F?
# b) Qual foi o valor-p?
# c) Considerando α = 0,05, existe diferença estatisticamente significativa
#    entre os métodos?
# d) H0 deve ser rejeitada ou não rejeitada?
# e) Escreva uma conclusão sobre o resultado.
# -----------------------------------------------------------------------------
# RESPOSTAS:
# a) F =
# b) valor-p =
# c)
# d)
# e)
#
# -----------------------------------------------------------------------------
