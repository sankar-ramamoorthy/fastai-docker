FROM alpine:latest
RUN mkdir /home/user/shared -p
WORKDIR /home/user/shared

#add additional artifacts
COPY ./files/  /home/user/shared/

RUN chmod 777 -R /home/user/shared

FROM alpine:latest
RUN apk --no-cache add ca-certificates
WORKDIR /home/user/shared
COPY --from=0 /home/user/shared .
