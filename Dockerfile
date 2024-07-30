FROM alpine:latest

# install dependencies
# Install netcat (netcat-openbsd)
RUN apk update && apk add --no-cache netcat-openbsd iputils

# run the command
CMD ["/scripts/nc_server.sh"]