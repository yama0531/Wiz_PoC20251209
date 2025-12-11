
# 意図的に脆弱性を増やすため、EOLな古い Node 10 を使用
FROM node:10

WORKDIR /app

# 依存ファイルを先にコピーしてインストール（古いバージョンを固定）
COPY package.json package-lock.json ./
RUN npm ci --only=production

# アプリ本体
COPY index.js .

# 悪い例：rootユーザのまま
USER root

# 悪い例：外部公開ポート（0.0.0.0）を利用
EXPOSE 3000

