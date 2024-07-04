FROM ghcr.io/maplibre/martin

ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

WORKDIR /app

ADD deploy /app
RUN martin --version
RUN pwd
RUN ls -a

EXPOSE 3000
CMD [ "--sprite", "./svgs"]