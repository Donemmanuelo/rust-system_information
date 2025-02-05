FROM rust:alpine AS build

WORKDIR /app

COPY . .

RUN cargo build --release

FROM alpine:latest

COPY --from=build /app/target/release/cli /app/cli

CMD ["/app/cli"]
