FROM ubuntu:20.04

# WORK DIRは「/」
RUN touch 1.txt
WORKDIR /app/mydir 
# WORK DIRは「/app/mydir」
RUN touch 2.txt
WORKDIR ..
# WORK DIRは「/app」
RUN touch 3.txt

CMD ["bash"]
