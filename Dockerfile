FROM golang:1.22-alpine AS build
WORKDIR /src
COPY . .
RUN go build -o /out/dr-demo-config-distributor .

FROM alpine:3.19
COPY --from=build /out/dr-demo-config-distributor /usr/local/bin/dr-demo-config-distributor
EXPOSE 8080
ENTRYPOINT ["/usr/local/bin/dr-demo-config-distributor"]
