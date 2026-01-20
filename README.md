# onpre_k8s_return_hello (APIサーバー)

## プログラム開発
### ローカルリポジトリ上で開発準備
```bash
## ディレクトリ作成
$ cd ~
$ mkdir onpre_k8s_return_hello

## ローカルリポジトリ初期化
$ cd ~/onpre_k8s_return_hello
$ git init

## ローカルリポジトリ設定 
$ git config --global user.email (自分のメールアドレス)
$ git config --global user.name Makoto-Araki

## ローカルリポジトリ設定
$ cd ~/onpre_k8s_return_hello
$ git branch -M main

## リモートリポジトリ設定
$ cd ~/onpre_k8s_return_hello
$ git remote add origin git@github.com:Makoto-Araki/onpre_k8s_return_hello.git

## 開発イメージ用のDockerfile作成
$ cd ~/onpre_k8s_return_hello
$ vi Dockerfile

## プログラム用ディレクトリ作成
$ cd ~/onpre_k8s_return_hello
$ mkdir app

## プログラム作成
$ cd ~/onpre_k8s_return_hello
$ vi app/main.py

## パッケージリスト作成
$ cd ~/onpre_k8s_return_hello
$ vi requirements.txt

## Dockerfile作成
$ cd ~/onpre_k8s_return_hello
$ vi Dockerfile

## 開発コンテナのディレクトリ作成
$ cd ~/onpre_k8s_return_hello
$ mkdir .devcontainer

## 開発コンテナの設定ファイル作成
$ cd ~/onpre_k8s_return_hello
$ vi .devcontainer/devcontainer.json

## 開発コンテナのDockerfile作成
$ cd ~/onpre_k8s_return_hello
$ vi .devcontainer/Dockerfile

## Kubernetes用のディレクトリ作成
$ cd ~/onpre_k8s_return_hello
$ mkdir k8s

## Kubernetes用のYAML作成
$ cd ~/onpre_k8s_return_hello
$ vi k8s/deployment.yaml

## Kubernetes用のYAML作成
$ cd ~/onpre_k8s_return_hello
$ vi k8s/service.yaml

## VSCode用のディレクトリ作成
$ cd ~/onpre_k8s_return_hello
$ mkdir .vscode

## VSCode用の設定ファイル作成
$ cd ~/onpre_k8s_return_hello
$ vi .vscode/settings.json

## 開発イメージビルド
$ cd ~/onpre_k8s_return_hello
$ docker build --no-cache -t onpre_k8s_return_hello_image .

## 開発イメージからVSCode上で開発コンテナ起動
$ cd ~/onpre_k8s_return_hello
$ code .
```

