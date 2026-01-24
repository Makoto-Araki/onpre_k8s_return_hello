# ビルド用イメージ
FROM python:3.11 AS builder
RUN pip install --upgrade pip setuptools wheel>=0.46.2
#RUN COPY requirements.txt .
#RUN pip install -r requirements.txt

# メイン用イメージ
FROM python:3.11-slim
COPY --from=builder /usr/local/lib/python3.11/site-packages \
                    /usr/local/lib/python3.11/site-packages

# デフォルトの作業ディレクトリ設定
WORKDIR /app

# jaraco系の古い依存関係を残すと脆弱性スキャンに検知されるため最新化
#RUN pip install --upgrade pip setuptools

# ライブラリ一覧をコピー
COPY requirements.txt .

# ライブラリ一覧をインストール
RUN pip install --no-cache-dir -r requirements.txt

# 依存ライブラリ一覧をインストール
#RUN pip install --no-cache-dir -r requirements.txt \
# && pip install --upgrade wheel>=0.46.2 \
# && pip uninstall -y wheel

# 全ファイルを/app配下にコピー
COPY . .

# デフォルトコマンド
#CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]

# デフォルトコマンド
CMD ["gunicorn", "app.main:app", "-k", "uvicorn.workers.UvicornWorker", "-w", "3", "-b", "0.0.0.0:8000"]
