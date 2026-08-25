# =============================================================================
# 01 — Preparar os dados (leitura + limpeza)
# Semana 4 · Modelagem Estatística Avançada · UniEVANGÉLICA · 2026.2
#
# Como usar:
# 1. Abra o projeto semana4.Rproj no RStudio (isso já define a pasta de trabalho).
# 2. Source neste arquivo (Ctrl+Shift+S) ou rode linha a linha.
# 3. O objeto dados_limpos fica na memória para os exercícios.
# =============================================================================

arquivo <- "esus-vepi.LeitoOcupacao_2022.csv"

if (!file.exists(arquivo)) {
  stop("CSV não encontrado.")
}

dados <- read.csv(
  arquivo,
  fileEncoding = "UTF-8",
  stringsAsFactors = FALSE,  # colunas de texto (estado, município) ficam character
  na.strings = c("", "NA")
)

dados$data <- as.Date(substr(dados$dataNotificacao, 1, 10))

cols_ocup <- c(
  "ocupacaoCovidUti", "ocupacaoCovidCli",
  "ocupacaoHospitalarUti", "ocupacaoHospitalarCli",
  "saidaConfirmadaObitos", "saidaConfirmadaAltas"
)
for (col in cols_ocup) {
  dados[[col]] <- as.numeric(dados[[col]])
}

# Remove ocupação negativa (erro de registro)
dados_limpos <- dados[
  !is.na(dados$ocupacaoCovidUti) & dados$ocupacaoCovidUti >= 0 &
    !is.na(dados$ocupacaoCovidCli) & dados$ocupacaoCovidCli >= 0 &
    !is.na(dados$ocupacaoHospitalarUti) & dados$ocupacaoHospitalarUti >= 0 &
    !is.na(dados$ocupacaoHospitalarCli) & dados$ocupacaoHospitalarCli >= 0,
]

cols_antigas <- c(
  "ocupacaoSuspeitoCli", "ocupacaoSuspeitoUti",
  "ocupacaoConfirmadoCli", "ocupacaoConfirmadoUti"
)
cols_antigas <- cols_antigas[cols_antigas %in% names(dados_limpos)]
if (length(cols_antigas) > 0) {
  dados_limpos[cols_antigas] <- NULL
}

cat("\n========== DADOS PRONTOS ==========\n")
cat("Linhas originais:", nrow(dados), "\n")
cat("Linhas limpas:   ", nrow(dados_limpos), "\n")
cat("Removidas:       ", nrow(dados) - nrow(dados_limpos), "\n")
cat("Colunas:         ", ncol(dados_limpos), "\n")
cat("Período:         ", as.character(min(dados_limpos$data, na.rm = TRUE)),
    "a", as.character(max(dados_limpos$data, na.rm = TRUE)), "\n")
cat("\nObjeto dados_limpos está na memória.\n")
cat("Agora rode 02_exercicios_aluno.R (ou acompanhe a demonstração 00).\n")
