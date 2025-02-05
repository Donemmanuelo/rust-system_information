FROM rust:alpine AS build

WORKDIR /app

RUN rustup update nightly

COPY . .

RUN apt-get update
RUN cargo build --release

FROM alpine:latest

COPY --from=build /app/target/release/cli /app/

CMD ["/app/cli"]
