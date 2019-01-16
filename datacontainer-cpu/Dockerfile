FROM alpine:latest
RUN mkdir /home/user/shared -p
WORKDIR /home/user/shared

#add additional artifacts
COPY   ./files/ComputerVision ./ComputerVision
COPY   ./files/course-v3 ./course-v3
COPY   ./files/data  ./data
COPY   ./files/.fastai  ./.fastai
COPY   ./files/.torch ./.torch

RUN chmod 777 -R /home/user/shared

FROM alpine:latest
RUN apk --no-cache add ca-certificates
WORKDIR /home/user/shared
COPY --from=0 /home/user/shared .
