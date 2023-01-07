FROM golang:1.15-alpine as builder
WORKDIR /app
COPY server.go ./
RUN go build -o /server server.go

FROM alpine
WORKDIR /
COPY --from=builder /. /.
CMD [ "./server" ]