FROM alpine
MAINTAINER mrevuri@memphis.edu
RUN apt-get update && apt-get install java
CMD ["echo", "hello"]