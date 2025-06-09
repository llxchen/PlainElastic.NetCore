#!/bin/sh
# 获取 Git 仓库的根目录
topPath=$(git rev-parse --show-toplevel)
echo begincheck1
if [ -z "$topPath" ]; then
    echo "错误: 不是 Git 仓库"
    exit 1
fi
echo endcheck1

# 检查 nuget-push.sh 是否存在
echo begincheck
if [ ! -f "$topPath/nuget-push.sh" ]; then
    echo "错误: 找不到 $topPath/nuget-push.sh"
    exit 1
fi

echo endcheck
# 执行 nuget-push.sh
"$topPath/nuget-push.sh"
