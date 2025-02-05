FROM rust:nginx AS build

WORKDIR /app

COPY . .

RUN cargo build --release

FROM alpine:latest
WORKDIR /app

COPY --from=build /app/target/release/cli /app/cli

CMD ["/app/cli"]
