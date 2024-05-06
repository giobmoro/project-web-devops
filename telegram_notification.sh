#!/bin/sh

BOT_URL="https://api.telegram.org/bot6666920619:AAFSFaxDkht8AaScjkbBM-P1VrhTYQl2sT0/sendMessage"
PARSE_MODE="Markdown"

send_msg () {
    curl -s -X POST "${BOT_URL}" -d chat_id="1472375243" \
        -d text="$1" -d parse_mode="${PARSE_MODE}"
}

msg="
-------------------------------------
Send message to telegram!
Atividade Somativa 2 - Devops
Giovana Beatriz Moro de Oliveira
--------------------------------------
"

send_msg "$msg"
