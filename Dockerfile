FROM alpine
MAINTAINER mrevuri@memphis.edu
RUN apk update && apk add openjdk11
CMD ["echo", "hello"]