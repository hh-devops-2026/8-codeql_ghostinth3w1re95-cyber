FROM golang:1.21

WORKDIR /app
COPY . .

RUN mkdir -p safe-files && echo "Hello World" > safe-files/hello.txt
RUN go build -o /app/go-web-server .

EXPOSE 8080
CMD ["/app/go-web-server"]
