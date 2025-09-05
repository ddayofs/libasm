# syntax=docker/dockerfile:1.6
FROM --platform=linux/amd64 debian:stable-slim

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y --no-install-recommends \
    nasm binutils gdb gcc make strace less vim ca-certificates file \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /work
