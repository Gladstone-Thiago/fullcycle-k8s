FROM golang:1.15-buster as builder
WORKDIR /app
COPY server.go ./
RUN go build -o /server server.go

FROM scratch
WORKDIR /
COPY --from=builder /server /server
CMD [ "./server" ]