FROM python:3.11-slim

# デフォルトの作業ディレクトリ設定
WORKDIR /app

# 依存ライブラリ一覧をコピー
COPY requirements.txt .

# 依存ライブラリ一覧をインストール
RUN pip install --no-cache-dir -r requirements.txt

# 全ファイルを/app配下にコピー
COPY . .

# デフォルトコマンド
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]

