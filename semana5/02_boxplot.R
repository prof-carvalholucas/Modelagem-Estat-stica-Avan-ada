# =============================================================================
# Questão 2 — Visualização (boxplot)
# Semana 5 · Modelagem Estatística Avançada · UniEVANGÉLICA · 2026.2
# =============================================================================

if (!exists("dados")) {
  source("00_dados.R", encoding = "UTF-8")
}

cat("\n========== QUESTÃO 2 — Boxplot ==========\n")

png("graficos/q2_boxplot_metodos.png", width = 900, height = 650, res = 120)
boxplot(
  nota ~ metodo,
  data = dados,
  main = "Notas por Método de Ensino",
  xlab = "Método",
  ylab = "Nota"
)
dev.off()

boxplot(
  nota ~ metodo,
  data = dados,
  main = "Notas por Método de Ensino",
  xlab = "Método",
  ylab = "Nota"
)

cat("Gráfico salvo em graficos/q2_boxplot_metodos.png\n")
cat("O boxplot também aparece no painel Plots do RStudio.\n")

# -----------------------------------------------------------------------------
# Analise o gráfico e responda:
# a) Qual grupo aparentemente possui as maiores notas?
# b) Existem diferenças visuais entre os grupos?
# c) Existem possíveis valores discrepantes (outliers)?
# -----------------------------------------------------------------------------
# RESPOSTAS:
# a)
# b)
# c)
# -----------------------------------------------------------------------------
