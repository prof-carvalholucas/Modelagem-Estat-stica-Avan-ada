# =============================================================================
# Questão 1 — Análise exploratória (ANOVA)
# Semana 5 · Modelagem Estatística Avançada · UniEVANGÉLICA · 2026.2
#
# Como usar: abra o projeto semana5.Rproj e execute este arquivo (Ctrl+Enter
# linha a linha, ou Ctrl+Shift+S para o arquivo inteiro).
# =============================================================================

if (!exists("dados")) {
  source("00_dados.R", encoding = "UTF-8")
}

cat("\n========== QUESTÃO 1 — Análise exploratória ==========\n")

cat("\n--- Primeiros registros ---\n")
print(head(dados))

cat("\n--- Tipos das variáveis ---\n")
str(dados)

cat("\n--- Estatísticas descritivas ---\n")
print(summary(dados))

cat("\n--- Média das notas por método ---\n")
print(aggregate(nota ~ metodo, data = dados, mean))

cat("\n--- (opcional) desvio-padrão e n por método ---\n")
print(aggregate(nota ~ metodo, data = dados, sd))
print(table(dados$metodo))

# -----------------------------------------------------------------------------
# PERGUNTA: Qual método apresentou a maior média?
# Escreva a resposta abaixo (e no relatório / PDF de entrega).
# -----------------------------------------------------------------------------
# RESPOSTA:
# Método com a maior média: ________________________________
# Valor da média: __________________________________________
#
# Interpretação (2 a 4 frases):
#
#
# -----------------------------------------------------------------------------
