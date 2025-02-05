FROM rust:1.65.0-bullseye AS builder

WORKDIR /app

COPY . .

RUN cargo build --release

FROM debian:11.5
WORKDIR /app

COPY --from=build /app/target/release/cli /app/cli

CMD ["/app/cli"]
