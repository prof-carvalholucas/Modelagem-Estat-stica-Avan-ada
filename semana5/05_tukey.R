# =============================================================================
# Questão 5 — Teste de Tukey
# Semana 5 · Modelagem Estatística Avançada · UniEVANGÉLICA · 2026.2
#
# A ANOVA diz SE existe diferença entre os grupos.
# O Tukey diz ENTRE QUAIS pares a diferença aparece.
# =============================================================================

if (!exists("dados")) {
  source("00_dados.R", encoding = "UTF-8")
}

if (!exists("modelo_anova")) {
  modelo_anova <- aov(nota ~ metodo, data = dados)
}

cat("\n========== QUESTÃO 5 — Tukey HSD ==========\n")

print(TukeyHSD(modelo_anova))

# Comparações a analisar:
#   Híbrido × Tradicional
#   Online  × Tradicional
#   Híbrido × Online

# -----------------------------------------------------------------------------
# a) Quais pares apresentam diferença estatisticamente significativa?
# b) Qual método apresentou melhor desempenho?
# c) ANOVA e Tukey possuem a mesma finalidade? Explique.
# -----------------------------------------------------------------------------
# RESPOSTAS:
# a)
# b)
# c)
#
# -----------------------------------------------------------------------------
