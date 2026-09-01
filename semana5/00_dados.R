# =============================================================================
# 00 — Conjuntos de dados da atividade
# Semana 5 · ANOVA e ANCOVA · UniEVANGÉLICA · 2026.2
#
# Rode este arquivo primeiro (Ctrl+Shift+S) ou deixe os outros scripts
# chamarem source("00_dados.R").
# =============================================================================

dir.create("graficos", showWarnings = FALSE)

# -----------------------------------------------------------------------------
# Parte 1 — ANOVA: métodos de ensino × nota
# -----------------------------------------------------------------------------
dados <- data.frame(
  metodo = factor(
    c(
      rep("Tradicional", 10),
      rep("Online", 10),
      rep("Hibrido", 10)
    ),
    levels = c("Tradicional", "Online", "Hibrido")
  ),
  nota = c(
    65, 70, 68, 72, 66, 69, 71, 67, 73, 70,
    72, 75, 78, 74, 77, 73, 79, 76, 80, 75,
    82, 85, 80, 88, 84, 86, 83, 87, 89, 85
  )
)

# -----------------------------------------------------------------------------
# Parte 2 — ANCOVA: acresce horas de estudo (covariável)
# -----------------------------------------------------------------------------
dados_ancova <- data.frame(
  metodo = factor(
    c(
      rep("Tradicional", 10),
      rep("Online", 10),
      rep("Hibrido", 10)
    ),
    levels = c("Tradicional", "Online", "Hibrido")
  ),
  horas_estudo = c(
    2, 3, 3, 4, 2, 4, 5, 3, 5, 4,
    3, 4, 5, 4, 6, 5, 6, 5, 7, 6,
    4, 5, 5, 6, 6, 7, 6, 8, 7, 8
  ),
  nota = c(
    65, 70, 68, 72, 66, 69, 71, 67, 73, 70,
    72, 75, 78, 74, 77, 73, 79, 76, 80, 75,
    82, 85, 80, 88, 84, 86, 83, 87, 89, 85
  )
)

# -----------------------------------------------------------------------------
# Questão 9 — conjunto sugerido (36 funcionários)
# Você pode criar o seu próprio; este é um exemplo completo e reprodutível.
# -----------------------------------------------------------------------------
dados_produtividade <- data.frame(
  modalidade = factor(
    rep(c("Presencial", "Hibrido", "Remoto"), each = 12),
    levels = c("Presencial", "Hibrido", "Remoto")
  ),
  experiencia = c(
    8, 12, 15, 6, 10, 14, 9, 16, 7, 11, 13, 18,
    5, 8, 11, 4, 9, 12, 6, 10, 7, 13, 5, 14,
    2, 4, 6, 1, 5, 8, 3, 7, 4, 9, 2, 10
  ),
  produtividade = c(
    70.6, 79.5, 78.7, 64.8, 71.7, 80.9, 65.6, 81.9, 65.8, 72.3, 82.4, 91.2,
    62.3, 75.8, 77.1, 64.9, 79.1, 80.5, 66.2, 76.2, 70.2, 81.2, 63.5, 80.9,
    60.4, 58.7, 65.0, 54.7, 62.2, 65.6, 60.1, 69.2, 63.6, 68.8, 56.9, 73.1
  )
)

cat("Dados carregados: dados, dados_ancova, dados_produtividade\n")
cat("n ANOVA =", nrow(dados), "| n ANCOVA =", nrow(dados_ancova),
    "| n desafio =", nrow(dados_produtividade), "\n")
