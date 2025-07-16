# Build stage
FROM golang:1.24.5 AS builder

WORKDIR /app

COPY go.mod ./

COPY . ./

RUN go build -o main .

# Run stage
FROM ubuntu:22.04

WORKDIR /app

COPY --from=builder /app/main .

EXPOSE 8080

CMD ["./main"]