# =============================================================================
# Questão 6 — Explorando a covariável (horas de estudo)
# Semana 5 · Modelagem Estatística Avançada · UniEVANGÉLICA · 2026.2
# =============================================================================

if (!exists("dados_ancova")) {
  source("00_dados.R", encoding = "UTF-8")
}

cat("\n========== QUESTÃO 6 — Horas de estudo × Nota ==========\n")

png("graficos/q6_horas_vs_nota.png", width = 900, height = 650, res = 120)
plot(
  dados_ancova$horas_estudo,
  dados_ancova$nota,
  xlab = "Horas de estudo",
  ylab = "Nota",
  main = "Horas de estudo × Nota"
)
dev.off()

plot(
  dados_ancova$horas_estudo,
  dados_ancova$nota,
  xlab = "Horas de estudo",
  ylab = "Nota",
  main = "Horas de estudo × Nota"
)

cat("\n--- Correlação de Pearson ---\n")
print(cor(
  dados_ancova$horas_estudo,
  dados_ancova$nota
))

cat("\n--- Média de horas por método (para pensar no confundimento) ---\n")
print(aggregate(horas_estudo ~ metodo, data = dados_ancova, mean))

cat("Gráfico salvo em graficos/q6_horas_vs_nota.png\n")

# -----------------------------------------------------------------------------
# a) Existe aparentemente uma relação entre horas de estudo e nota?
# b) A relação é positiva ou negativa?
# c) Por que as horas de estudo podem interferir na comparação entre os métodos?
# -----------------------------------------------------------------------------
# RESPOSTAS:
# a)
# b)
# c)
#
# -----------------------------------------------------------------------------
