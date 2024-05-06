#!/bin/sh

# Construa a URL do bot do Telegram usando a variável de ambiente TELEGRAM_TOKEN:
BOT_URL="https://api.telegram.org/bot${TELEGRAM_TOKEN}/sendMessage"

# Defina o formato da mensagem. Pode ser "Markdown" ou "HTML":
PARSE_MODE="Markdown"

# Envie a mensagem usando o GitHub API:
send_msg () {
    curl -s -X POST ${BOT_URL} -d chat_id=$TELEGRAM_CHAT_ID \
        -d text="$1" -d parse_mode=${PARSE_MODE}
}

# Defina a mensagem a ser enviada:
send_msg "
-------------------------------------
GitHub Actions build *${GITHUB_RUN_NUMBER}* ${GITHUB_RUN_CONCLUSION}!
\`Repository:  ${GITHUB_REPOSITORY}\`
\`Branch:      ${GITHUB_REF}\`
*Commit Msg:*
${GITHUB_SHA}
${GITHUB_EVENT_NAME} event triggered this build.
--------------------------------------
"



