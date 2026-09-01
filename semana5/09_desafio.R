# =============================================================================
# Questão 9 — Desafio: modalidade de trabalho × produtividade
# Semana 5 · Modelagem Estatística Avançada · UniEVANGÉLICA · 2026.2
#
# Realize:
#   1. análise descritiva
#   2. cálculo das médias
#   3. boxplot
#   4. ANOVA
#   5. teste de Tukey
#   6. gráfico relacionando experiência e produtividade
#   7. ANCOVA utilizando experiência como covariável
#   8. comparação ANOVA × ANCOVA + conclusão
#
# Há um conjunto sugerido em 00_dados.R (dados_produtividade).
# Você pode usá-lo ou criar o seu (mínimo 30 funcionários, 3 modalidades).
# =============================================================================

if (!exists("dados_produtividade")) {
  source("00_dados.R", encoding = "UTF-8")
}

# Se quiser criar o SEU dataset, comente o source acima e monte o data.frame:
# dados_produtividade <- data.frame(
#   modalidade = factor(...),
#   experiencia = c(...),
#   produtividade = c(...)
# )

cat("\n========== QUESTÃO 9 — Desafio ==========\n")

# 1) Análise descritiva
cat("\n--- 1) Descritiva ---\n")
print(head(dados_produtividade))
str(dados_produtividade)
print(summary(dados_produtividade))

# 2) Médias
cat("\n--- 2) Médias por modalidade ---\n")
print(aggregate(
  cbind(experiencia, produtividade) ~ modalidade,
  data = dados_produtividade,
  mean
))

# 3) Boxplot
cat("\n--- 3) Boxplot ---\n")
png("graficos/q9_boxplot_produtividade.png", width = 900, height = 650, res = 120)
boxplot(
  produtividade ~ modalidade,
  data = dados_produtividade,
  main = "Produtividade por modalidade de trabalho",
  xlab = "Modalidade",
  ylab = "Produtividade"
)
dev.off()

boxplot(
  produtividade ~ modalidade,
  data = dados_produtividade,
  main = "Produtividade por modalidade de trabalho",
  xlab = "Modalidade",
  ylab = "Produtividade"
)

# 4) ANOVA
cat("\n--- 4) ANOVA ---\n")
anova_q9 <- aov(produtividade ~ modalidade, data = dados_produtividade)
print(summary(anova_q9))

# 5) Tukey
cat("\n--- 5) Tukey ---\n")
print(TukeyHSD(anova_q9))

# 6) Experiência × produtividade
cat("\n--- 6) Experiência × produtividade ---\n")
png("graficos/q9_experiencia_vs_produtividade.png", width = 900, height = 650, res = 120)
plot(
  dados_produtividade$experiencia,
  dados_produtividade$produtividade,
  xlab = "Anos de experiência",
  ylab = "Produtividade",
  main = "Experiência × Produtividade"
)
dev.off()

plot(
  dados_produtividade$experiencia,
  dados_produtividade$produtividade,
  xlab = "Anos de experiência",
  ylab = "Produtividade",
  main = "Experiência × Produtividade"
)

print(cor(dados_produtividade$experiencia, dados_produtividade$produtividade))

# 7) ANCOVA
cat("\n--- 7) ANCOVA ---\n")
ancova_q9 <- aov(
  produtividade ~ experiencia + modalidade,
  data = dados_produtividade
)
print(summary(ancova_q9))

# 8) Comparação
cat("\n--- 8) Comparação ANOVA vs ANCOVA ---\n")
cat("Olhe o F e o valor-p de 'modalidade' nos dois resumos acima.\n")

# -----------------------------------------------------------------------------
# CONCLUSÃO:
# A modalidade de trabalho influencia a produtividade mesmo depois de
# controlar os anos de experiência?
#
# Escreva 1 parágrafo:
#
#
# -----------------------------------------------------------------------------
