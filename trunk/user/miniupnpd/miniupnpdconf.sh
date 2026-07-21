#!/bin/sh

CONFIG_FILE="/etc/miniupnpd.conf"

# 检查文件是否存在
if [ ! -f "$CONFIG_FILE" ]; then
    echo "错误：配置文件 $CONFIG_FILE 不存在！" >&2
    exit 1
fi

# 替换
REPLACE_ITEMS="
"

# 追加
APPEND_BLOCK='
# Additional settings added by script
ext_allow_private_ipv4=yes
ext_perform_stun=allow-filtered
ext_stun_host=stun.miwifi.com
'

# 替换
old_IFS="$IFS"
IFS='
'
for item in $REPLACE_ITEMS; do
    [ -z "$item" ] && continue
    key="${item%%=*}"
    value="${item#*=}"
    if grep -q "^[[:space:]]*${key}[[:space:]]*=" "$CONFIG_FILE"; then
        sed -i "s/^[[:space:]]*${key}[[:space:]]*=.*/${key}=${value}/" "$CONFIG_FILE"
        echo "已替换: $item"
    else
        echo "$item" >> "$CONFIG_FILE"
        echo "已追加: $item"
    fi
done
IFS="$old_IFS"

# 追加
echo "$APPEND_BLOCK" >> "$CONFIG_FILE"
echo "已追加多行配置。"
echo "配置文件更新完成。"
