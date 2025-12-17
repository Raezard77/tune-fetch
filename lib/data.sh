#!/bin/bash
# For full explanation: docs/design/data.md

DATA_FILE="./data/tunefetch.txt"

if [[ -f "$DATA_FILE" ]]; then
    key=""
    while IFS= read -r line || [[ -n "$line" ]]; do
        line="${line%%[$'\r\n']}"  # strip CR/LF
        if [[ -z "$key" ]]; then
            key="$line"
        else
            value="$line"
            export "$key"="$value"
        key=""
        fi
    done < "$DATA_FILE"

else
    read -rp "Enter YouTube link: " link
    read -rp "Enter title: " title
    export link title
fi
