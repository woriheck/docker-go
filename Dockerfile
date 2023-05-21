FROM golang:1.20.0
WORKDIR /usr/src/app

COPY go.* .
COPY src .
RUN go mod download
RUN go build -mod=readonly -v -o server

CMD ["./server"]
