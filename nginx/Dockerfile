FROM nginx

EXPOSE 80
EXPOSE 443
EXPOSE 1317
EXPOSE 9090
EXPOSE 26656
EXPOSE 26657

RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/default.conf
