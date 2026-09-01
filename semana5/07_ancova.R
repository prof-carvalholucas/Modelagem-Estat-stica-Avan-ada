# =============================================================================
# Questão 7 — Executando ANCOVA
# Semana 5 · Modelagem Estatística Avançada · UniEVANGÉLICA · 2026.2
#
# Variável dependente: nota
# Fator categórico:    metodo
# Covariável:          horas_estudo
# =============================================================================

if (!exists("dados_ancova")) {
  source("00_dados.R", encoding = "UTF-8")
}

cat("\n========== QUESTÃO 7 — ANCOVA ==========\n")

modelo_ancova <- aov(
  nota ~ horas_estudo + metodo,
  data = dados_ancova
)

print(summary(modelo_ancova))

# -----------------------------------------------------------------------------
# Analise separadamente horas_estudo e metodo.
# a) As horas de estudo apresentam influência significativa sobre as notas?
# b) Depois de controlar as horas de estudo, o método continua apresentando
#    diferença significativa?
# c) Qual é o valor-p associado ao método?
# d) Qual conclusão você pode apresentar para a instituição?
# -----------------------------------------------------------------------------
# RESPOSTAS:
# a)
# b)
# c) valor-p do método =
# d)
#
# -----------------------------------------------------------------------------
