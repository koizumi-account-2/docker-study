FROM gcc:12.2.0 AS compiler

WORKDIR /app
COPY ./hello.c .
RUN gcc hello.c


FROM ubuntu:20.04
WORKDIR /app
# 0番目のfrom(compiler)からa.outをコピーする
COPY --from=compiler /app/a.out .
CMD ["./a.out"]
