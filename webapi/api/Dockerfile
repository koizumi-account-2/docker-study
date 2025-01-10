FROM gradle:7
WORKDIR /api
# apiフォルダの内容を、コンテナ側の/apiにコピーする
COPY . . 

CMD ["./gradlew","bootrun"]