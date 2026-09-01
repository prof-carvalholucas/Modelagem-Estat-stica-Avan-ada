# =============================================================================
# Questão 8 — Comparando ANOVA e ANCOVA
# Semana 5 · Modelagem Estatística Avançada · UniEVANGÉLICA · 2026.2
# =============================================================================

if (!exists("dados_ancova")) {
  source("00_dados.R", encoding = "UTF-8")
}

cat("\n========== QUESTÃO 8 — ANOVA vs ANCOVA ==========\n")

modelo_anova2 <- aov(
  nota ~ metodo,
  data = dados_ancova
)

cat("\n--- ANOVA (só o método) ---\n")
print(summary(modelo_anova2))

modelo_ancova2 <- aov(
  nota ~ horas_estudo + metodo,
  data = dados_ancova
)

cat("\n--- ANCOVA (horas de estudo + método) ---\n")
print(summary(modelo_ancova2))

# -----------------------------------------------------------------------------
# a) O que a ANOVA está analisando?
# b) O que foi acrescentado na ANCOVA?
# c) Por que controlar uma covariável pode modificar a interpretação
#    dos resultados?
# d) Qual modelo você considera mais adequado para esse problema? Justifique.
# -----------------------------------------------------------------------------
# RESPOSTAS:
# a)
# b)
# c)
# d)
#
# -----------------------------------------------------------------------------
