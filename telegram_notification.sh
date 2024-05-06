#!/bin/sh

# Construa a URL do bot do Telegram usando a variável de ambiente TELEGRAM_TOKEN:
BOT_URL="https://api.telegram.org/bot6666920619:AAFSFaxDkht8AaScjkbBM-P1VrhTYQl2sT0/sendMessage"

# Defina o formato da mensagem. Pode ser "Markdown" ou "HTML":
PARSE_MODE="Markdown"

# Envie a mensagem usando o GitHub API:
send_msg () {
    curl -s -X POST "${BOT_URL}" -d chat_id="1472375243" \
        -d text="$1" -d parse_mode="${PARSE_MODE}"
}

# Defina a mensagem a ser enviada:
msg="
-------------------------------------
Send message to telegram!
Atividade Somativa 2 - Devops
Giovana Beatriz Moro de Oliveira
--------------------------------------
"

send_msg "$msg"
