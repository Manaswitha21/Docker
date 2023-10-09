FROM alpine
MAINTAINER mrevuri@memphis.edu
RUN apk update && apk install java
CMD ["echo", "hello"]