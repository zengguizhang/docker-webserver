FROM gcc
RUN apt update && apt install libmariadb-dev -y 
COPY . .
RUN make server
CMD ["./server"]  