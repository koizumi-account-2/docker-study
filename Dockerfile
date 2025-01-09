# ベースイメージの指定
FROM ubuntu:20.04

# イメージ作成時にライブラリ情報を更新するコマンドを実行する
RUN apt update
# curlというライブラリをインストール
RUN apt install -y curl

# sample.txt を app　というフォルダにコピー
COPY ./test /app/